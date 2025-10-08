import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/features/inspection_feature/params/plan_inspection_param.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/services/inspection_service/inspection_service.dart';
import '../model/inspection_details_model.dart';
import '../model/inspection_overview_model.dart';
import '../model/property_inspection_view_model.dart';
import '../params/add_inspection_params.dart';
import '../params/add_template_param.dart';
import '../params/inspection_compliance_params.dart';
import '../params/update_inspection_params.dart';
import '../params/update_overview_param.dart';
import 'inspection_details_provider.dart';
part 'inspection_provider.g.dart';

@riverpod
class InspectionNotifier extends _$InspectionNotifier {
  @override
  FutureOr<String?> build() async {
    return null;
  }

  Future<void> addInspection() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final param = ref.read(addInspectionParamProvider);
      final response =
          await ref.read(inspectionServiceProvider).addInspection(param: param);
      return response;
    });
  }

  Future<void> updateInspection(int inspectionId, int templateId) async {
    state = const AsyncLoading();

    final localInspections = _getLocalInspections(inspectionId, templateId);
    if (localInspections == null || localInspections.isEmpty) {
      state = const AsyncError('No inspection update', StackTrace.empty);
      return;
    }

    state = await AsyncValue.guard(() async {
      final selectedAttributes = _mapToSelectedAttributes(localInspections);
      final updateParams =
          _createUpdateParams(localInspections, selectedAttributes);

      final response = await ref
          .read(inspectionServiceProvider)
          .updateInspection(param: updateParams);

      await _cleanupAfterUpdate(localInspections);

      return response;
    });
  }

  List<PropertyInspectionViewModel>? _getLocalInspections(
      int inspectionId, int templateId) {
    return ref
        .read(localStorageServiceProvider)
        .getFilteredInspections(inspectionId, templateId);
  }

  List<SelectedAttribute> _mapToSelectedAttributes(
      List<PropertyInspectionViewModel> inspections) {
    return inspections
        .map((inspection) => SelectedAttribute(
              Id: inspection.id,
              Cleaned: inspection.clean,
              Undermanaged: inspection.unDamage,
              Working: inspection.working,
              AgentComment: inspection.comments,
              TenantComment: inspection.tenantComment,
              IsTenantAgree: inspection.isTenantAgree,
              CleanedByTenant: inspection.cleanByTenant,
              UndermanagedByTenant: inspection.unDamageByTenant,
              WorkingByTenant: inspection.workingByTenant,
              AddUpdatePictures: _mapImagesToPictures(
                  inspection.images.map((e) => e.image).toList()),
            ))
        .toList();
  }

  List<Map<String, dynamic>> _mapImagesToPictures(List<XFile> images) {
    return images
        .map((image) => {
              'id': 0,
              'PicturePath': image.path,
            })
        .toList();
  }

  UpdateInspectionParams _createUpdateParams(
    List<PropertyInspectionViewModel> inspections,
    List<SelectedAttribute> selectedAttributes,
  ) {
    final firstInspection = inspections.first;

    return UpdateInspectionParams(
      InspectionId: firstInspection.inspectionId,
      TemplateId: firstInspection.templateId,
      SelectedAttributeList: selectedAttributes,
      TemplateNotes: '',
      AddUpdatePictures: [],
    );
  }

  Future<void> _cleanupAfterUpdate(
      List<PropertyInspectionViewModel> inspections) async {
    final firstInspection = inspections.first;

    ref.invalidate(getInspectionDetailsProvider(
      inspectionId: firstInspection.inspectionId,
    ));

    final inspectionIds = inspections.map((e) => e.id).toList();
    ref.read(localStorageServiceProvider).removeInspectionByIds(inspectionIds);
  }

  Future<void> shareInspection(
      {required String inspectionId,
      required int userType,
      required int userId}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final response = await ref
          .read(inspectionServiceProvider)
          .shareInspection(
              inspectionId: inspectionId, userType: userType, userId: userId);
      return response;
    });
  }

  Future<void> updateOverview() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final param = ref.read(updateOverviewParamsProvider);
      final response = await ref
          .read(inspectionServiceProvider)
          .updateOverview(param: param);
      return response;
    });
  }

  Future<void> updateCompliance() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final param = ref.read(inspectionComplianceParamProvider);
      final response =
          await ref.read(inspectionServiceProvider).updateCompliance(param);
      return response;
    });
  }

  Future<void> planInspection() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final param = ref.read(planInspectionParamProvider);
      final response = await ref
          .read(inspectionServiceProvider)
          .addMultipleInspection(param: param);
      return response;
    });
  }
}

@Riverpod(keepAlive: true)
class AddInspectionParam extends _$AddInspectionParam {
  @override
  AddInspectionParams build() {
    return AddInspectionParams.empty();
  }

  void update(AddInspectionParams Function(AddInspectionParams p) updateParam) {
    state = updateParam(state);
  }
}

@Riverpod(keepAlive: true)
class UpdateInspectionParam extends _$UpdateInspectionParam {
  @override
  UpdateInspectionParams build() {
    return UpdateInspectionParams.empty();
  }

  void update(
      UpdateInspectionParams Function(UpdateInspectionParams p) updateParam) {
    state = updateParam(state);
  }
}

@Riverpod(keepAlive: true)
class AddNewTemplateParams extends _$AddNewTemplateParams {
  @override
  AddTemplateParams build() {
    return AddTemplateParams.empty();
  }

  void update(AddTemplateParams Function(AddTemplateParams p) updateParam) {
    state = updateParam(state);
  }
}

@Riverpod(keepAlive: true)
class UpdateOverviewParams extends _$UpdateOverviewParams {
  @override
  UpdateOverviewParam build() {
    return UpdateOverviewParam.empty();
  }

  void update(UpdateOverviewParam Function(UpdateOverviewParam p) updateParam) {
    state = updateParam(state);
  }

  void updateForInitial(InspectionOverviewModel model) {
    state = state.copyWith(
        Id: model.inspectionId ?? 0,
        AssignedAgent: model.assignedAgent.toString(),
        TenantFolioId: model.tenantFolioId ?? 0,
        Label: model.label ?? '',
        Summary: model.summary ?? "");
  }
}

@Riverpod(keepAlive: true)
class InspectionComplianceParam extends _$InspectionComplianceParam {
  @override
  InspectionComplianceParams build() {
    return InspectionComplianceParams.empty();
  }

  void update(
      InspectionComplianceParams Function(InspectionComplianceParams p)
          updateParam) {
    state = updateParam(state);
  }

  void updateForInitial(
      InspectionComplianceUtilitiesDetails model, int inspectionId) {
    try {
      state = state.copyWith(
        InspectionId: inspectionId,
        PremisesStrctlySound: model.premisesStrctlySound,
        LightingInRoom: model.lightingInRoom,
        Ventilation: model.ventilation,
        ElctrcityOutletsSockt: model.elctrcityOutletsSockt,
        PlumbingandDrainage: model.plumbingandDrainage,
        SuppliedElectricty: model.suppliedElectricty,
        SuppliedGas: model.suppliedGas,
        ConnectdToWaterSupply: model.connectdToWaterSupply,
        ContainBathrm: model.containBathrm,
        TenantAgreesUtilities: model.tenantAgreesUtilities,
        AdditionalUtilitiesTerms: model.additionalUtilitiesTerms,
        SignsMuds: model.signsMuds,
        PestsVermin: model.pestsVermin,
        Rubbish: model.rubbish,
        ListedLooseFill: model.listedLooseFill,
        SmokeAlarmInstalled: model.smokeAlarmInstalled,
        SmokeAlarmWorking: model.smokeAlarmWorking,
        SmokeAlaramLastChecked: model.smokeAlaramLastChecked,
        SmokeAlarmBttryReplaced: model.smokeAlarmBttryReplaced,
        BattryChangedDate: model.battryChangedDate,
        HaveRemovableBattry: model.haveRemovableBattry,
        RemovableBattryChangedDate: model.removableBattryChangedDate,
        VisibleSIgnDamage: model.visibleSIgnDamage,
        VisibleElectricityHazard: model.visibleElectricityHazard,
        VisibleGasHazard: model.visibleGasHazard,
        TenantAgreeSafetyIssues: model.tenantAgreeSafetyIssues,
        AdditionalTermSafetyIssues:
            model.additionalTermSafetyIssues == "true" ? true : false,
        TelephoneConnectd: model.telephoneConnectd,
        InternetConnected: model.internetConnected,
        SeperatedMetered: model.seperatedMetered,
        ShowerheadMaximumFlow: model.showerheadMaximumFlow,
        DualFlushToilet: model.dualFlushToilet,
        ColdWatrTapsMaximumFlow: model.coldWatrTapsMaximumFlow,
        CheckedWaterLeakage: model.checkedWaterLeakage,
        WaterEfficiencyDateChecked: model.waterEfficiencyDateChecked,
        WatermeterReadingStart: model.watermeterReadingStart,
        DateofWaterMeterReadingStart: model.dateofWaterMeterReadingStart,
        WatermeterReadingEnd: model.watermeterReadingEnd,
        DateOdWaterMeterReadingEnd: model.dateOdWaterMeterReadingEnd,
        AdditionalComments: model.additionalComments,
        LastDatePaintingExternal: model.lastDatePaintingExternal,
        LastDatePaintingInternal: model.lastDatePaintingInternal,
        LastDateInstalledSmokeAlarms: model.lastDateInstalledSmokeAlarms,
        LastDateFloorCleaned: model.lastDateFloorCleaned,
        LandlordAgreeToUndrtakeWork:
            model.landlordAgreeToUndrtakeWork == "true" ? true : false,
        LandLordWorkDoneBy: model.landLordWorkDoneBy,
        LandLordWorkDoneNote: model.landLordWorkDoneNote,
        TenantReceivedOn: model.tenantReceivedOn,
        WaterMeterReading: model.waterMeterReading,
      );
    } catch (e) {
      print(e);
    }
  }
}

@Riverpod(keepAlive: true)
class PlanInspectionParam extends _$PlanInspectionParam {
  String? _selectedTimeSlot;
  int? _selectedDuration;
  List<int> propertyIds = [];
  @override
  PlanInspectionParams build() {
    return const PlanInspectionParams();
  }

  void updateParam(
      PlanInspectionParams Function(PlanInspectionParams p) updateParam) {
    state = updateParam(state);
  }

  void updateTimeSlot(String val) {
    _selectedTimeSlot = val;

    setPropertySequentialTimeSlot();
  }

  void updateDuration(int duration) {
    _selectedDuration = duration;

    setPropertySequentialTimeSlot();
  }

  void updatePropertyIds(List<int> ids) {
    propertyIds = ids;
  }

  void setPropertySequentialTimeSlot() {
    if (_selectedTimeSlot == null ||
        _selectedDuration == null ||
        propertyIds.isEmpty) {
      return;
    }
    final inspectionDate = state.InspectionDate ?? DateTime.now();

    DateTime currentStartTime = _parseTimeSlot(
      inspectionDate,
      _selectedTimeSlot!,
    );

    final propertyDetails = propertyIds.map((id) {
      final start = currentStartTime;
      final end = start.add(Duration(minutes: _selectedDuration!));
      currentStartTime = end.add(const Duration(minutes: 15));

      return PropertyDetail(
        PropertyId: id,
        StartTime: start,
        EndTime: end,
      );
    }).toList();

    updateParam((p) => p.copyWith(PropertyDetails: propertyDetails));
  }

  DateTime _parseTimeSlot(DateTime date, String timeSlot) {
    try {
      final trimmedTimeSlot = timeSlot.trim();

      final parts = trimmedTimeSlot.split(' ');

      if (parts.length != 2) {
        throw FormatException('Invalid time slot format: $timeSlot');
      }

      final timePart = parts[0];
      final period = parts[1].toUpperCase();

      final timeParts = timePart.split(':');

      if (timeParts.length != 2) {
        throw FormatException('Invalid time format: $timePart');
      }

      int hour = int.parse(timeParts[0]);
      int minute = int.parse(timeParts[1]);

      if (period == "PM" && hour != 12) hour += 12;
      if (period == "AM" && hour == 12) hour = 0;

      return DateTime(date.year, date.month, date.day, hour, minute);
    } catch (e) {
      print('Error parsing time slot: $timeSlot');
      print('Error details: $e');
      rethrow;
    }
  }
}

@riverpod
class SubTemplateNotifier extends _$SubTemplateNotifier {
  @override
  FutureOr<SubTemplateState?> build() async {
    return null;
  }

  Future<void> addSubTemplate(int tempId, String facility) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final result = await ref
          .read(inspectionServiceProvider)
          .addSubTemplate(tempId, facility);
      return SubTemplateState(event: SubTemplateEvent.add, response: result);
    });
  }

  Future<void> removeSubTemplate(int tempId, int facilityId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final result = await ref
          .read(inspectionServiceProvider)
          .deleteSubTemplate(tempId, facilityId);
      return SubTemplateState(event: SubTemplateEvent.delete, response: result);
    });
  }
}
