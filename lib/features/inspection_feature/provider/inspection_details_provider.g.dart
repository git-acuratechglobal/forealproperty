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

String _$getInspectionOverviewHash() =>
    r'0ae07dcfb29166aa1ac57422cdc493e795ecba4d';

/// See also [getInspectionOverview].
@ProviderFor(getInspectionOverview)
const getInspectionOverviewProvider = GetInspectionOverviewFamily();

/// See also [getInspectionOverview].
class GetInspectionOverviewFamily
    extends Family<AsyncValue<InspectionOverviewModel>> {
  /// See also [getInspectionOverview].
  const GetInspectionOverviewFamily();

  /// See also [getInspectionOverview].
  GetInspectionOverviewProvider call({
    required String uniqueId,
  }) {
    return GetInspectionOverviewProvider(
      uniqueId: uniqueId,
    );
  }

  @override
  GetInspectionOverviewProvider getProviderOverride(
    covariant GetInspectionOverviewProvider provider,
  ) {
    return call(
      uniqueId: provider.uniqueId,
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
  String? get name => r'getInspectionOverviewProvider';
}

/// See also [getInspectionOverview].
class GetInspectionOverviewProvider
    extends AutoDisposeFutureProvider<InspectionOverviewModel> {
  /// See also [getInspectionOverview].
  GetInspectionOverviewProvider({
    required String uniqueId,
  }) : this._internal(
          (ref) => getInspectionOverview(
            ref as GetInspectionOverviewRef,
            uniqueId: uniqueId,
          ),
          from: getInspectionOverviewProvider,
          name: r'getInspectionOverviewProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getInspectionOverviewHash,
          dependencies: GetInspectionOverviewFamily._dependencies,
          allTransitiveDependencies:
              GetInspectionOverviewFamily._allTransitiveDependencies,
          uniqueId: uniqueId,
        );

  GetInspectionOverviewProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.uniqueId,
  }) : super.internal();

  final String uniqueId;

  @override
  Override overrideWith(
    FutureOr<InspectionOverviewModel> Function(
            GetInspectionOverviewRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetInspectionOverviewProvider._internal(
        (ref) => create(ref as GetInspectionOverviewRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        uniqueId: uniqueId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<InspectionOverviewModel> createElement() {
    return _GetInspectionOverviewProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetInspectionOverviewProvider && other.uniqueId == uniqueId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, uniqueId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetInspectionOverviewRef
    on AutoDisposeFutureProviderRef<InspectionOverviewModel> {
  /// The parameter `uniqueId` of this provider.
  String get uniqueId;
}

class _GetInspectionOverviewProviderElement
    extends AutoDisposeFutureProviderElement<InspectionOverviewModel>
    with GetInspectionOverviewRef {
  _GetInspectionOverviewProviderElement(super.provider);

  @override
  String get uniqueId => (origin as GetInspectionOverviewProvider).uniqueId;
}

String _$getTemplatesHash() => r'9ece19de1589a6b75afa908599c7f58da057e39a';

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

String _$getActiveAgentHash() => r'b2e49c6dd6c7ea86457822a721b46edf7334e793';

/// See also [getActiveAgent].
@ProviderFor(getActiveAgent)
const getActiveAgentProvider = GetActiveAgentFamily();

/// See also [getActiveAgent].
class GetActiveAgentFamily extends Family<AsyncValue<List<ActiveAgentModel>>> {
  /// See also [getActiveAgent].
  const GetActiveAgentFamily();

  /// See also [getActiveAgent].
  GetActiveAgentProvider call({
    required String agencyId,
  }) {
    return GetActiveAgentProvider(
      agencyId: agencyId,
    );
  }

  @override
  GetActiveAgentProvider getProviderOverride(
    covariant GetActiveAgentProvider provider,
  ) {
    return call(
      agencyId: provider.agencyId,
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
  String? get name => r'getActiveAgentProvider';
}

/// See also [getActiveAgent].
class GetActiveAgentProvider
    extends AutoDisposeFutureProvider<List<ActiveAgentModel>> {
  /// See also [getActiveAgent].
  GetActiveAgentProvider({
    required String agencyId,
  }) : this._internal(
          (ref) => getActiveAgent(
            ref as GetActiveAgentRef,
            agencyId: agencyId,
          ),
          from: getActiveAgentProvider,
          name: r'getActiveAgentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getActiveAgentHash,
          dependencies: GetActiveAgentFamily._dependencies,
          allTransitiveDependencies:
              GetActiveAgentFamily._allTransitiveDependencies,
          agencyId: agencyId,
        );

  GetActiveAgentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.agencyId,
  }) : super.internal();

  final String agencyId;

  @override
  Override overrideWith(
    FutureOr<List<ActiveAgentModel>> Function(GetActiveAgentRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetActiveAgentProvider._internal(
        (ref) => create(ref as GetActiveAgentRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        agencyId: agencyId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ActiveAgentModel>> createElement() {
    return _GetActiveAgentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetActiveAgentProvider && other.agencyId == agencyId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, agencyId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetActiveAgentRef
    on AutoDisposeFutureProviderRef<List<ActiveAgentModel>> {
  /// The parameter `agencyId` of this provider.
  String get agencyId;
}

class _GetActiveAgentProviderElement
    extends AutoDisposeFutureProviderElement<List<ActiveAgentModel>>
    with GetActiveAgentRef {
  _GetActiveAgentProviderElement(super.provider);

  @override
  String get agencyId => (origin as GetActiveAgentProvider).agencyId;
}

String _$getInspectionActivityHash() =>
    r'1fb8a43649949dd991200d592a83227eb86684c8';

/// See also [getInspectionActivity].
@ProviderFor(getInspectionActivity)
const getInspectionActivityProvider = GetInspectionActivityFamily();

/// See also [getInspectionActivity].
class GetInspectionActivityFamily
    extends Family<AsyncValue<List<InspectionActivityModel>>> {
  /// See also [getInspectionActivity].
  const GetInspectionActivityFamily();

  /// See also [getInspectionActivity].
  GetInspectionActivityProvider call({
    required int inspectionId,
  }) {
    return GetInspectionActivityProvider(
      inspectionId: inspectionId,
    );
  }

  @override
  GetInspectionActivityProvider getProviderOverride(
    covariant GetInspectionActivityProvider provider,
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
  String? get name => r'getInspectionActivityProvider';
}

/// See also [getInspectionActivity].
class GetInspectionActivityProvider
    extends AutoDisposeFutureProvider<List<InspectionActivityModel>> {
  /// See also [getInspectionActivity].
  GetInspectionActivityProvider({
    required int inspectionId,
  }) : this._internal(
          (ref) => getInspectionActivity(
            ref as GetInspectionActivityRef,
            inspectionId: inspectionId,
          ),
          from: getInspectionActivityProvider,
          name: r'getInspectionActivityProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getInspectionActivityHash,
          dependencies: GetInspectionActivityFamily._dependencies,
          allTransitiveDependencies:
              GetInspectionActivityFamily._allTransitiveDependencies,
          inspectionId: inspectionId,
        );

  GetInspectionActivityProvider._internal(
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
    FutureOr<List<InspectionActivityModel>> Function(
            GetInspectionActivityRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetInspectionActivityProvider._internal(
        (ref) => create(ref as GetInspectionActivityRef),
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
  AutoDisposeFutureProviderElement<List<InspectionActivityModel>>
      createElement() {
    return _GetInspectionActivityProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetInspectionActivityProvider &&
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
mixin GetInspectionActivityRef
    on AutoDisposeFutureProviderRef<List<InspectionActivityModel>> {
  /// The parameter `inspectionId` of this provider.
  int get inspectionId;
}

class _GetInspectionActivityProviderElement
    extends AutoDisposeFutureProviderElement<List<InspectionActivityModel>>
    with GetInspectionActivityRef {
  _GetInspectionActivityProviderElement(super.provider);

  @override
  int get inspectionId =>
      (origin as GetInspectionActivityProvider).inspectionId;
}

String _$getSubTemplateHash() => r'132c138378c3fff264e5bf5d40c6c1c09ebbf71a';

/// See also [getSubTemplate].
@ProviderFor(getSubTemplate)
const getSubTemplateProvider = GetSubTemplateFamily();

/// See also [getSubTemplate].
class GetSubTemplateFamily extends Family<AsyncValue<SubTemplateModel>> {
  /// See also [getSubTemplate].
  const GetSubTemplateFamily();

  /// See also [getSubTemplate].
  GetSubTemplateProvider call(
    int templateId,
  ) {
    return GetSubTemplateProvider(
      templateId,
    );
  }

  @override
  GetSubTemplateProvider getProviderOverride(
    covariant GetSubTemplateProvider provider,
  ) {
    return call(
      provider.templateId,
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
  String? get name => r'getSubTemplateProvider';
}

/// See also [getSubTemplate].
class GetSubTemplateProvider
    extends AutoDisposeFutureProvider<SubTemplateModel> {
  /// See also [getSubTemplate].
  GetSubTemplateProvider(
    int templateId,
  ) : this._internal(
          (ref) => getSubTemplate(
            ref as GetSubTemplateRef,
            templateId,
          ),
          from: getSubTemplateProvider,
          name: r'getSubTemplateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSubTemplateHash,
          dependencies: GetSubTemplateFamily._dependencies,
          allTransitiveDependencies:
              GetSubTemplateFamily._allTransitiveDependencies,
          templateId: templateId,
        );

  GetSubTemplateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.templateId,
  }) : super.internal();

  final int templateId;

  @override
  Override overrideWith(
    FutureOr<SubTemplateModel> Function(GetSubTemplateRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSubTemplateProvider._internal(
        (ref) => create(ref as GetSubTemplateRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        templateId: templateId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SubTemplateModel> createElement() {
    return _GetSubTemplateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSubTemplateProvider && other.templateId == templateId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, templateId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetSubTemplateRef on AutoDisposeFutureProviderRef<SubTemplateModel> {
  /// The parameter `templateId` of this provider.
  int get templateId;
}

class _GetSubTemplateProviderElement
    extends AutoDisposeFutureProviderElement<SubTemplateModel>
    with GetSubTemplateRef {
  _GetSubTemplateProviderElement(super.provider);

  @override
  int get templateId => (origin as GetSubTemplateProvider).templateId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
