import 'package:foreal_property/core/services/home_services/home_services.dart';
import 'package:foreal_property/features/home_features/models/contact_detail_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'get_contact_detail.g.dart';
@riverpod
class GetContactDetail extends _$GetContactDetail {
  Future<void> getContactDetail(String id) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      return await ref.read(homeServiceProvider).getContactDetail(id);
    });
  }

  @override
  FutureOr<ContactDetailModel?> build() {
    return null;
  }
}
