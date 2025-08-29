// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getInspectionDetailsHash() =>
    r'05cc12ca9d89cb8bd166d6ad5318ca6bd8861db7';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getInspectionDetails].
@ProviderFor(getInspectionDetails)
const getInspectionDetailsProvider = GetInspectionDetailsFamily();

/// See also [getInspectionDetails].
class GetInspectionDetailsFamily
    extends Family<AsyncValue<InspectionDetailsModel>> {
  /// See also [getInspectionDetails].
  const GetInspectionDetailsFamily();

  /// See also [getInspectionDetails].
  GetInspectionDetailsProvider call({
    required int inspectionId,
  }) {
    return GetInspectionDetailsProvider(
      inspectionId: inspectionId,
    );
  }

  @override
  GetInspectionDetailsProvider getProviderOverride(
    covariant GetInspectionDetailsProvider provider,
  ) {
    return call(
      inspectionId: provider.inspectionId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getInspectionDetailsProvider';
}

/// See also [getInspectionDetails].
class GetInspectionDetailsProvider
    extends AutoDisposeFutureProvider<InspectionDetailsModel> {
  /// See also [getInspectionDetails].
  GetInspectionDetailsProvider({
    required int inspectionId,
  }) : this._internal(
          (ref) => getInspectionDetails(
            ref as GetInspectionDetailsRef,
            inspectionId: inspectionId,
          ),
          from: getInspectionDetailsProvider,
          name: r'getInspectionDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getInspectionDetailsHash,
          dependencies: GetInspectionDetailsFamily._dependencies,
          allTransitiveDependencies:
              GetInspectionDetailsFamily._allTransitiveDependencies,
          inspectionId: inspectionId,
        );

  GetInspectionDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.inspectionId,
  }) : super.internal();

  final int inspectionId;

  @override
  Override overrideWith(
    FutureOr<InspectionDetailsModel> Function(GetInspectionDetailsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetInspectionDetailsProvider._internal(
        (ref) => create(ref as GetInspectionDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        inspectionId: inspectionId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<InspectionDetailsModel> createElement() {
    return _GetInspectionDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetInspectionDetailsProvider &&
        other.inspectionId == inspectionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, inspectionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetInspectionDetailsRef
    on AutoDisposeFutureProviderRef<InspectionDetailsModel> {
  /// The parameter `inspectionId` of this provider.
  int get inspectionId;
}

class _GetInspectionDetailsProviderElement
    extends AutoDisposeFutureProviderElement<InspectionDetailsModel>
    with GetInspectionDetailsRef {
  _GetInspectionDetailsProviderElement(super.provider);

  @override
  int get inspectionId => (origin as GetInspectionDetailsProvider).inspectionId;
}

String _$getTemplatesHash() => r'9727401b7095e3649548c185ac551b1682ca61d5';

/// See also [getTemplates].
@ProviderFor(getTemplates)
const getTemplatesProvider = GetTemplatesFamily();

/// See also [getTemplates].
class GetTemplatesFamily extends Family<AsyncValue<TemplateAttribute>> {
  /// See also [getTemplates].
  const GetTemplatesFamily();

  /// See also [getTemplates].
  GetTemplatesProvider call({
    required int inspectionId,
  }) {
    return GetTemplatesProvider(
      inspectionId: inspectionId,
    );
  }

  @override
  GetTemplatesProvider getProviderOverride(
    covariant GetTemplatesProvider provider,
  ) {
    return call(
      inspectionId: provider.inspectionId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getTemplatesProvider';
}

/// See also [getTemplates].
class GetTemplatesProvider
    extends AutoDisposeFutureProvider<TemplateAttribute> {
  /// See also [getTemplates].
  GetTemplatesProvider({
    required int inspectionId,
  }) : this._internal(
          (ref) => getTemplates(
            ref as GetTemplatesRef,
            inspectionId: inspectionId,
          ),
          from: getTemplatesProvider,
          name: r'getTemplatesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getTemplatesHash,
          dependencies: GetTemplatesFamily._dependencies,
          allTransitiveDependencies:
              GetTemplatesFamily._allTransitiveDependencies,
          inspectionId: inspectionId,
        );

  GetTemplatesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.inspectionId,
  }) : super.internal();

  final int inspectionId;

  @override
  Override overrideWith(
    FutureOr<TemplateAttribute> Function(GetTemplatesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetTemplatesProvider._internal(
        (ref) => create(ref as GetTemplatesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        inspectionId: inspectionId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<TemplateAttribute> createElement() {
    return _GetTemplatesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetTemplatesProvider && other.inspectionId == inspectionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, inspectionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetTemplatesRef on AutoDisposeFutureProviderRef<TemplateAttribute> {
  /// The parameter `inspectionId` of this provider.
  int get inspectionId;
}

class _GetTemplatesProviderElement
    extends AutoDisposeFutureProviderElement<TemplateAttribute>
    with GetTemplatesRef {
  _GetTemplatesProviderElement(super.provider);

  @override
  int get inspectionId => (origin as GetTemplatesProvider).inspectionId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
