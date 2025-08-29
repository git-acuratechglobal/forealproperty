import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/core/services/home_services/home_services.dart';
import 'package:foreal_property/features/home_features/models/get_openhomelist_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'openhomelist.g.dart';

// @riverpod
// class OpenHomeList extends _$OpenHomeList {
//   @override
//   FutureOr<List<GetOpenHomeListModel>?> build() async {
//     return await ref.read(homeServiceProvider).getOpenhomelist(
//         SortBy: "CreatedOn",
//         SortOrder: "Desc",
//         RecordsPerPage: 10,
//         AgencyId: 1,
//         Search: "",
//         PageNo: 1,
//         IsCurrent: false,
//         LoggedUserId: 2);
//   }
// }

@riverpod
Future<List<GetOpenHomeListModel>?> openHomeList(Ref ref, {  required bool isCurrent}) async {
  return await ref.read(homeServiceProvider).getOpenhomelist(
    SortBy: "CreatedOn",
    SortOrder: "Desc",
    RecordsPerPage: 10,
    AgencyId: 1,
    Search: "",
    PageNo: 1,
    IsCurrent: isCurrent,
    LoggedUserId: 2,
  );
}
