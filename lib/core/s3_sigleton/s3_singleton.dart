import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minio/minio.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as path;

enum UploadStatus { success, failed, loading }

class UploadResult {
  final String? key;
  final UploadStatus status;
  final String message;
  final String? presignedUrl;

  UploadResult({
    this.key,
    required this.status,
    required this.message,
    this.presignedUrl,
  });

  @override
  String toString() {
    return 'UploadResult(key: $key, status: $status, message: $message, presignedUrl: $presignedUrl)';
  }
}

final miniServiceProvider = Provider<MinioService>((ref) => MinioService());

class MinioService {
  // Private constructor
  MinioService._internal();

  // Singleton instance
  static final MinioService _instance = MinioService._internal();

  // Factory constructor to return the same instance
  factory MinioService() => _instance;

  // Minio client instance
  late Minio _minio;
  bool _isInitialized = false;

  // AWS/S3 Configuration
  static const String _accessKey = 'AKIAR4BCBDVB5XPQSKRG';
  static const String _secretKey = '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';
  static const String _bucketName = 'forealproperties';
  static const String _region = 'ap-southeast-2';
  static const String _bucketPrefix = ''; // Add your bucket prefix if needed

  // Getters for configuration
  String get bucketName => _bucketName;
  String get region => _region;
  bool get isInitialized => _isInitialized;

  /// Initialize the Minio client
  void initialize() {
    if (!_isInitialized) {
      _minio = Minio(
        endPoint: 's3.$_region.amazonaws.com',
        accessKey: _accessKey,
        secretKey: _secretKey,
        useSSL: true,
        region: _region,
      );
      _isInitialized = true;
      print('MinioService initialized successfully');
    }
  }

  /// Ensure Minio is initialized before any operation
  void _ensureInitialized() {
    if (!_isInitialized) {
      initialize();
    }
  }

  /// Upload a single image file to S3
  Future<UploadResult> uploadImage({
    required File imageFile,
    required String folderPath,
    required String filePrefix,
    int urlExpirySeconds = 3600,
    Function(int progress)? onProgress,
  }) async {
    try {
      _ensureInitialized();

      // Validate input
      if (!await imageFile.exists()) {
        return UploadResult(
          status: UploadStatus.failed,
          message: "Image file does not exist",
        );
      }

      // Validate file size (max 10MB)
      const maxSizeInBytes = 10 * 1024 * 1024;
      final fileSize = await imageFile.length();
      if (fileSize > maxSizeInBytes) {
        return UploadResult(
          status: UploadStatus.failed,
          message: "File size exceeds maximum limit of 10MB",
        );
      }

      // Get file extension and validate
      final fileExtension = path.extension(imageFile.path).toLowerCase();
      if (fileExtension.isEmpty) {
        return UploadResult(
          status: UploadStatus.failed,
          message: "File must have a valid extension",
        );
      }

      // Validate image file type
      if (!_isValidImageExtension(fileExtension)) {
        return UploadResult(
          status: UploadStatus.failed,
          message:
              "Invalid image file type. Supported: jpg, jpeg, png, gif, webp, bmp",
        );
      }

      // Get content type
      final contentType = _getContentType(fileExtension);

      // Read file as bytes
      final fileBytes = await imageFile.readAsBytes();
      final totalSize = fileBytes.length;
      int uploadedSize = 0;

      // Create stream with progress tracking
      final stream = Stream.fromIterable([fileBytes]).map((chunk) {
        uploadedSize += chunk.length;
        return chunk;
      });

      // Upload to S3

      final result = await _minio.putObject(_bucketName, "${filePrefix}${folderPath}", stream,
          size: fileBytes.length,
          metadata: {
            'Content-Type': contentType,
            'Content-Disposition': 'inline',
            'Cache-Control': 'max-age=31536000',
          }, onProgress: (val) {
            onProgress?.call(val);
      });
      return UploadResult(
        key: "${filePrefix}${folderPath}",
        status: UploadStatus.success,
        message: "Image uploaded successfully",
        presignedUrl: result,
      );
    } catch (e) {
      return UploadResult(
        status: UploadStatus.failed,
        message: "Upload failed: ${e.toString()}",
      );
    }
  }

  /// Get presigned URL for an existing object
  Future<String> getPresignedUrl({
    required String key,
    int expirySeconds = 3600,
    String? bucketName,
  }) async {
    try {
      _ensureInitialized();

      final presignedUrl = await _minio.presignedGetObject(
        bucketName ?? _bucketName,
        key,
        expires: expirySeconds,
      );

      return presignedUrl;
    } catch (e) {
      throw Exception('Failed to generate presigned URL: ${e.toString()}');
    }
  }

  /// Helper method to validate image extensions
  bool _isValidImageExtension(String extension) {
    const validExtensions = [
      '.jpg',
      '.jpeg',
      '.png',
      '.gif',
      '.webp',
      '.bmp',
      '.svg'
    ];
    return validExtensions.contains(extension.toLowerCase());
  }

  /// Helper method to get content type
  String _getContentType(String fileExtension) {
    final ext = fileExtension.toLowerCase();
    switch (ext) {
      case '.jpg':
      case '.jpeg':
        return 'image/jpeg';
      case '.png':
        return 'image/png';
      case '.gif':
        return 'image/gif';
      case '.webp':
        return 'image/webp';
      case '.bmp':
        return 'image/bmp';
      case '.svg':
        return 'image/svg+xml';
      default:
        return lookupMimeType(fileExtension) ?? 'application/octet-stream';
    }
  }

  /// Dispose method (optional, for cleanup if needed)
  void dispose() {
    // Cleanup if needed
    print('MinioService disposed');
  }
}

// Extension methods for easier usage
extension MinioServiceExtensions on MinioService {
  /// Quick upload for property images
  Future<UploadResult> uploadPropertyImage(File imageFile, imagePath) {
    return uploadImage(
      imageFile: imageFile,
      folderPath: imagePath,
      filePrefix: 'property/',
    );
  }

  Future<UploadResult> uploadInspectionPropertyImage(
      File imageFile, imagePath,) {
    return uploadImage(
        imageFile: imageFile,
        folderPath: imagePath,
        filePrefix: 'inspection/',
       );
  }

  /// Quick upload for profile images
  Future<UploadResult> uploadProfileImage(File imageFile,
      ) {
    return uploadImage(
      imageFile: imageFile,
      folderPath: 'profiles',
      filePrefix: 'profile_img',

    );
  }
}
