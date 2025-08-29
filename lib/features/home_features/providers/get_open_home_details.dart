import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/core/services/home_services/home_services.dart';
import 'package:foreal_property/features/home_features/models/get_open_home_detail_model.dart';
import 'package:foreal_property/features/home_features/providers/openhomelist.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_open_home_details.g.dart';


@riverpod
// class OpenHomeDetailsList extends _$OpenHomeDetailsList {

  FutureOr<GetOpenHomeDetail> OpenHomeDetailList(Ref ref, {required String openHomeUniqueId}) async {
     ref.invalidate(openHomeListProvider);
    return await ref.read(homeServiceProvider).getOpenHomeDetail(
      openHomeUniqueId: openHomeUniqueId,
      recordsPerPage: 10,
      agencyId: 1,
      sortBy: "CreatedOn",
      sortOrder: "Desc",
      loggedUserId: 2,
    );
    
  }
  
// }
