// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$inspectionListNotifierHash() =>
    r'65efa786bee447efb2aef91e642bd6961cd5b220';

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

abstract class _$InspectionListNotifier
    extends BuildlessAutoDisposeAsyncNotifier<
        PaginationResponse<InspectionListModel>> {
  late final int tabId;

  FutureOr<PaginationResponse<InspectionListModel>> build({
    int tabId = 1,
  });
}

/// See also [InspectionListNotifier].
@ProviderFor(InspectionListNotifier)
const inspectionListNotifierProvider = InspectionListNotifierFamily();

/// See also [InspectionListNotifier].
class InspectionListNotifierFamily
    extends Family<AsyncValue<PaginationResponse<InspectionListModel>>> {
  /// See also [InspectionListNotifier].
  const InspectionListNotifierFamily();

  /// See also [InspectionListNotifier].
  InspectionListNotifierProvider call({
    int tabId = 1,
  }) {
    return InspectionListNotifierProvider(
      tabId: tabId,
    );
  }

  @override
  InspectionListNotifierProvider getProviderOverride(
    covariant InspectionListNotifierProvider provider,
  ) {
    return call(
      tabId: provider.tabId,
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
  String? get name => r'inspectionListNotifierProvider';
}

/// See also [InspectionListNotifier].
class InspectionListNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<InspectionListNotifier,
        PaginationResponse<InspectionListModel>> {
  /// See also [InspectionListNotifier].
  InspectionListNotifierProvider({
    int tabId = 1,
  }) : this._internal(
          () => InspectionListNotifier()..tabId = tabId,
          from: inspectionListNotifierProvider,
          name: r'inspectionListNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$inspectionListNotifierHash,
          dependencies: InspectionListNotifierFamily._dependencies,
          allTransitiveDependencies:
              InspectionListNotifierFamily._allTransitiveDependencies,
          tabId: tabId,
        );

  InspectionListNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tabId,
  }) : super.internal();

  final int tabId;

  @override
  FutureOr<PaginationResponse<InspectionListModel>> runNotifierBuild(
    covariant InspectionListNotifier notifier,
  ) {
    return notifier.build(
      tabId: tabId,
    );
  }

  @override
  Override overrideWith(InspectionListNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: InspectionListNotifierProvider._internal(
        () => create()..tabId = tabId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tabId: tabId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<InspectionListNotifier,
      PaginationResponse<InspectionListModel>> createElement() {
    return _InspectionListNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InspectionListNotifierProvider && other.tabId == tabId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tabId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin InspectionListNotifierRef on AutoDisposeAsyncNotifierProviderRef<
    PaginationResponse<InspectionListModel>> {
  /// The parameter `tabId` of this provider.
  int get tabId;
}

class _InspectionListNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<InspectionListNotifier,
        PaginationResponse<InspectionListModel>>
    with InspectionListNotifierRef {
  _InspectionListNotifierProviderElement(super.provider);

  @override
  int get tabId => (origin as InspectionListNotifierProvider).tabId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
