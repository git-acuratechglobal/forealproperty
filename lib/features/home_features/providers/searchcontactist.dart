

import 'package:foreal_property/core/services/home_services/home_services.dart';
import 'package:foreal_property/features/home_features/models/contact_list_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'searchcontactist.g.dart';
@riverpod
class SearchableContactList extends _$SearchableContactList {
  @override
  FutureOr<List<ContactList>> build() async {
    // Initially return empty list
    return [];
  }

  Future<void> fetchContacts({required String searchValue}) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final contacts = await ref.read(homeServiceProvider).getContactList(
        AgencyUniqueId: "",
        sortBy: "CreatedDate",
        sortOrder: "Desc",
        agencyId: 1,
        search: searchValue,
        searchContactType: "",
        loggedUserId: 2,
      );

      return contacts;
    });
  }
}
