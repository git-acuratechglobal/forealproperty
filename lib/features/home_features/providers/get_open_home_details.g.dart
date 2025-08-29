// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_open_home_details.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$openHomeDetailListHash() =>
    r'4ea6c34c79c6025d5662eb98720e3795ad9c6fa3';

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

/// See also [OpenHomeDetailList].
@ProviderFor(OpenHomeDetailList)
const openHomeDetailListProvider = OpenHomeDetailListFamily();

/// See also [OpenHomeDetailList].
class OpenHomeDetailListFamily extends Family<AsyncValue<GetOpenHomeDetail>> {
  /// See also [OpenHomeDetailList].
  const OpenHomeDetailListFamily();

  /// See also [OpenHomeDetailList].
  OpenHomeDetailListProvider call({
    required String openHomeUniqueId,
  }) {
    return OpenHomeDetailListProvider(
      openHomeUniqueId: openHomeUniqueId,
    );
  }

  @override
  OpenHomeDetailListProvider getProviderOverride(
    covariant OpenHomeDetailListProvider provider,
  ) {
    return call(
      openHomeUniqueId: provider.openHomeUniqueId,
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
  String? get name => r'openHomeDetailListProvider';
}

/// See also [OpenHomeDetailList].
class OpenHomeDetailListProvider
    extends AutoDisposeFutureProvider<GetOpenHomeDetail> {
  /// See also [OpenHomeDetailList].
  OpenHomeDetailListProvider({
    required String openHomeUniqueId,
  }) : this._internal(
          (ref) => OpenHomeDetailList(
            ref as OpenHomeDetailListRef,
            openHomeUniqueId: openHomeUniqueId,
          ),
          from: openHomeDetailListProvider,
          name: r'openHomeDetailListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$openHomeDetailListHash,
          dependencies: OpenHomeDetailListFamily._dependencies,
          allTransitiveDependencies:
              OpenHomeDetailListFamily._allTransitiveDependencies,
          openHomeUniqueId: openHomeUniqueId,
        );

  OpenHomeDetailListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.openHomeUniqueId,
  }) : super.internal();

  final String openHomeUniqueId;

  @override
  Override overrideWith(
    FutureOr<GetOpenHomeDetail> Function(OpenHomeDetailListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: OpenHomeDetailListProvider._internal(
        (ref) => create(ref as OpenHomeDetailListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        openHomeUniqueId: openHomeUniqueId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GetOpenHomeDetail> createElement() {
    return _OpenHomeDetailListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OpenHomeDetailListProvider &&
        other.openHomeUniqueId == openHomeUniqueId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, openHomeUniqueId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin OpenHomeDetailListRef on AutoDisposeFutureProviderRef<GetOpenHomeDetail> {
  /// The parameter `openHomeUniqueId` of this provider.
  String get openHomeUniqueId;
}

class _OpenHomeDetailListProviderElement
    extends AutoDisposeFutureProviderElement<GetOpenHomeDetail>
    with OpenHomeDetailListRef {
  _OpenHomeDetailListProviderElement(super.provider);

  @override
  String get openHomeUniqueId =>
      (origin as OpenHomeDetailListProvider).openHomeUniqueId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
