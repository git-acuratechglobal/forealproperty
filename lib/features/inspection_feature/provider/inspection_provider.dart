import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/services/inspection_service/inspection_service.dart';
import '../params/add_inspection_params.dart';
import '../params/add_template_param.dart';
import '../params/update_inspection_params.dart';
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

  Future<void> updateInspection() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final param = ref.read(updateInspectionParamProvider);
      final response = await ref
          .read(inspectionServiceProvider)
          .updateInspection(param: param);
      return response;
    });
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
