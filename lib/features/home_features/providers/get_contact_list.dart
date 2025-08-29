import 'package:foreal_property/core/services/home_services/home_services.dart';
import 'package:foreal_property/features/home_features/models/contact_list_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'get_contact_list.g.dart';

@riverpod
class GetContactList extends _$GetContactList {
  @override
  FutureOr<List<ContactList>?> build() async {
    return await ref.read(homeServiceProvider).getContactList(
        AgencyUniqueId: "",
        sortBy: "CreatedDate",
        sortOrder: "Desc",
        agencyId: 1,
        search: "",
        searchContactType: "",
        loggedUserId: 2);
  }

  Future<void> searchProperty({required String searchValue}) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final allContacts = await ref.read(homeServiceProvider).getContactList(
            AgencyUniqueId: "",
            sortBy: "CreatedDate",
            sortOrder: "Desc",
            agencyId: 1,
            search: searchValue,
            searchContactType: "",
            loggedUserId: 2,
          );

      if (searchValue.trim().isEmpty) return allContacts;

      final filtered = allContacts
          .where((contact) =>
              (contact.firstName ?? "")
                  .toLowerCase()
                  .contains(searchValue.toLowerCase()) ||
              (contact.email ?? "")
                  .toLowerCase()
                  .contains(searchValue.toLowerCase()) ||
              (contact.phone ?? "")
                  .toLowerCase()
                  .contains(searchValue.toLowerCase()))
          .toList();

      // final nonFiltered = allContacts
      //     .where((contact) => !(filtered.contains(contact)))
      //     .toList();

      return [...filtered, ]; // Move filtered items to top
    });
  }
  
Future<void> resetContacts() async {
  state = const AsyncLoading();
  state = await AsyncValue.guard(() async {
    return await ref.read(homeServiceProvider).getContactList(
      AgencyUniqueId: "",
      sortBy: "CreatedDate",
      sortOrder: "Desc",
      agencyId: 1,
      search: "",
      searchContactType: "",
      loggedUserId: 2,
    );
  });
}

  // Future<void> searchProperty({required String searchValue}) async {
  //   state = AsyncLoading();
  //   state = await AsyncValue.guard(() async {
  //     return await ref.watch(homeServiceProvider).getContactList(
  //         AgencyUniqueId: "",
  //         sortBy: "CreatedDate",
  //         sortOrder: "Desc",
  //         agencyId: 1,
  //         search: searchValue,
  //         searchContactType: "",
  //         loggedUserId: 2);
  //   });
  // }
}
