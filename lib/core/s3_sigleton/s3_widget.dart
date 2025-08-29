import 'package:flutter/material.dart';
import 'package:foreal_property/core/s3_sigleton/s3_singleton.dart';
import 'package:foreal_property/core/utils/network_image_widget.dart';

class S3ImageDisplayWidget extends StatefulWidget {
  const S3ImageDisplayWidget({super.key, required this.imagePath});

  final String imagePath;

  @override
  State<S3ImageDisplayWidget> createState() => _S3ImageDisplayWidgetState();
}

class _S3ImageDisplayWidgetState extends State<S3ImageDisplayWidget>
    with AutomaticKeepAliveClientMixin {
  final MinioService _minioService = MinioService();

  static final Map<String, String> _urlCache = <String, String>{};
  static final Map<String, DateTime> _cacheTimestamps = <String, DateTime>{};

  static const Duration _cacheDuration = Duration(minutes: 45);

  String imageUrl = "";
  bool isLoading = true;
  String? errorMessage;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    loadImages();
  }

  bool _isCacheValid(String path) {
    if (!_urlCache.containsKey(path) || !_cacheTimestamps.containsKey(path)) {
      return false;
    }

    final timestamp = _cacheTimestamps[path]!;
    return DateTime.now().difference(timestamp) < _cacheDuration;
  }

  Future<void> loadImages() async {
    try {
      setState(() {
        isLoading = true;
        errorMessage = null;
      });

      if (_isCacheValid(widget.imagePath)) {
        imageUrl = _urlCache[widget.imagePath]!;
        setState(() {
          isLoading = false;
        });
        return;
      }

      final url = await _minioService.getPresignedUrl(key: widget.imagePath);

      _urlCache[widget.imagePath] = url;
      _cacheTimestamps[widget.imagePath] = DateTime.now();

      imageUrl = url;
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print('Error loading images: $e');
      setState(() {
        isLoading = false;
        errorMessage = 'Failed to load images: ${e.toString()}';
      });
    }
  }

  // static void clearCache() {
  //   _urlCache.clear();
  //   _cacheTimestamps.clear();
  // }

  // Method to clear specific cache entry
  static void clearCacheForPath(String path) {
    _urlCache.remove(path);
    _cacheTimestamps.remove(path);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // Important for AutomaticKeepAliveClientMixin

    return isLoading
        ? const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                //  SizedBox(height: 16),
                Text('Loading images...'),
              ],
            ),
          )
        : errorMessage != null
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline,
                        size: 64, color: Colors.red),
                    const SizedBox(height: 16),
                    Text(
                      errorMessage!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.red),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        // Clear cache for this path and reload
                        clearCacheForPath(widget.imagePath);
                        loadImages();
                      },
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              )
            : imageUrl.isEmpty
                ? const Center(child: Text('No images found'))
                : NetworkImageWidget(imageUrl: imageUrl);
  }
}
