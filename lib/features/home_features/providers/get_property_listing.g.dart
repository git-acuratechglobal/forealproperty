// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_property_listing.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getPropertyListingHash() =>
    r'506d22bb4e098fd6b793ad0c8b277cb4e1f3e6b0';

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

abstract class _$GetPropertyListing
    extends BuildlessAutoDisposeAsyncNotifier<List<PropertyListingList>?> {
  late final int propertyType;

  FutureOr<List<PropertyListingList>?> build(
    int propertyType,
  );
}

/// See also [GetPropertyListing].
@ProviderFor(GetPropertyListing)
const getPropertyListingProvider = GetPropertyListingFamily();

/// See also [GetPropertyListing].
class GetPropertyListingFamily
    extends Family<AsyncValue<List<PropertyListingList>?>> {
  /// See also [GetPropertyListing].
  const GetPropertyListingFamily();

  /// See also [GetPropertyListing].
  GetPropertyListingProvider call(
    int propertyType,
  ) {
    return GetPropertyListingProvider(
      propertyType,
    );
  }

  @override
  GetPropertyListingProvider getProviderOverride(
    covariant GetPropertyListingProvider provider,
  ) {
    return call(
      provider.propertyType,
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
  String? get name => r'getPropertyListingProvider';
}

/// See also [GetPropertyListing].
class GetPropertyListingProvider extends AutoDisposeAsyncNotifierProviderImpl<
    GetPropertyListing, List<PropertyListingList>?> {
  /// See also [GetPropertyListing].
  GetPropertyListingProvider(
    int propertyType,
  ) : this._internal(
          () => GetPropertyListing()..propertyType = propertyType,
          from: getPropertyListingProvider,
          name: r'getPropertyListingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPropertyListingHash,
          dependencies: GetPropertyListingFamily._dependencies,
          allTransitiveDependencies:
              GetPropertyListingFamily._allTransitiveDependencies,
          propertyType: propertyType,
        );

  GetPropertyListingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.propertyType,
  }) : super.internal();

  final int propertyType;

  @override
  FutureOr<List<PropertyListingList>?> runNotifierBuild(
    covariant GetPropertyListing notifier,
  ) {
    return notifier.build(
      propertyType,
    );
  }

  @override
  Override overrideWith(GetPropertyListing Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetPropertyListingProvider._internal(
        () => create()..propertyType = propertyType,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        propertyType: propertyType,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GetPropertyListing,
      List<PropertyListingList>?> createElement() {
    return _GetPropertyListingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPropertyListingProvider &&
        other.propertyType == propertyType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, propertyType.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetPropertyListingRef
    on AutoDisposeAsyncNotifierProviderRef<List<PropertyListingList>?> {
  /// The parameter `propertyType` of this provider.
  int get propertyType;
}

class _GetPropertyListingProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GetPropertyListing,
        List<PropertyListingList>?> with GetPropertyListingRef {
  _GetPropertyListingProviderElement(super.provider);

  @override
  int get propertyType => (origin as GetPropertyListingProvider).propertyType;
}

String _$searchPropertyForInspectionHash() =>
    r'1e467712c46d1538e3ad906636a35ea6d33bb120';

/// See also [SearchPropertyForInspection].
@ProviderFor(SearchPropertyForInspection)
final searchPropertyForInspectionProvider = AutoDisposeAsyncNotifierProvider<
    SearchPropertyForInspection, List<PropertyForInspection>>.internal(
  SearchPropertyForInspection.new,
  name: r'searchPropertyForInspectionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchPropertyForInspectionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SearchPropertyForInspection
    = AutoDisposeAsyncNotifier<List<PropertyForInspection>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
