// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openhomelist.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$openHomeListHash() => r'c0c5d579e1a93d6f60ac9f2c21ea3504f533cb79';

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

/// See also [openHomeList].
@ProviderFor(openHomeList)
const openHomeListProvider = OpenHomeListFamily();

/// See also [openHomeList].
class OpenHomeListFamily
    extends Family<AsyncValue<List<GetOpenHomeListModel>?>> {
  /// See also [openHomeList].
  const OpenHomeListFamily();

  /// See also [openHomeList].
  OpenHomeListProvider call({
    required bool isCurrent,
  }) {
    return OpenHomeListProvider(
      isCurrent: isCurrent,
    );
  }

  @override
  OpenHomeListProvider getProviderOverride(
    covariant OpenHomeListProvider provider,
  ) {
    return call(
      isCurrent: provider.isCurrent,
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
  String? get name => r'openHomeListProvider';
}

/// See also [openHomeList].
class OpenHomeListProvider
    extends AutoDisposeFutureProvider<List<GetOpenHomeListModel>?> {
  /// See also [openHomeList].
  OpenHomeListProvider({
    required bool isCurrent,
  }) : this._internal(
          (ref) => openHomeList(
            ref as OpenHomeListRef,
            isCurrent: isCurrent,
          ),
          from: openHomeListProvider,
          name: r'openHomeListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$openHomeListHash,
          dependencies: OpenHomeListFamily._dependencies,
          allTransitiveDependencies:
              OpenHomeListFamily._allTransitiveDependencies,
          isCurrent: isCurrent,
        );

  OpenHomeListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.isCurrent,
  }) : super.internal();

  final bool isCurrent;

  @override
  Override overrideWith(
    FutureOr<List<GetOpenHomeListModel>?> Function(OpenHomeListRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: OpenHomeListProvider._internal(
        (ref) => create(ref as OpenHomeListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        isCurrent: isCurrent,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<GetOpenHomeListModel>?>
      createElement() {
    return _OpenHomeListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OpenHomeListProvider && other.isCurrent == isCurrent;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, isCurrent.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin OpenHomeListRef
    on AutoDisposeFutureProviderRef<List<GetOpenHomeListModel>?> {
  /// The parameter `isCurrent` of this provider.
  bool get isCurrent;
}

class _OpenHomeListProviderElement
    extends AutoDisposeFutureProviderElement<List<GetOpenHomeListModel>?>
    with OpenHomeListRef {
  _OpenHomeListProviderElement(super.provider);

  @override
  bool get isCurrent => (origin as OpenHomeListProvider).isCurrent;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
