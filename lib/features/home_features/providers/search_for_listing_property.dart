import 'dart:async';
import 'package:foreal_property/core/services/home_services/home_services.dart';
import 'package:foreal_property/features/home_features/models/searchforpropertylisting.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_for_listing_property.g.dart';
@riverpod
class SearchPropertyListingNotifier extends _$SearchPropertyListingNotifier {
  @override
  FutureOr<List<SearchPropertyListingForSelect2>?> build() async {
    return await ref.watch(homeServiceProvider).getsSearchPropertyListing(
      search: 'a',
      recordsPerPage: 10,
      pageNo: 1,
      agencyUniqueId: 'ba137a8612994',
    );
  }

  Future<void> searchOpenHomeList({required String searchQuery}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      return await ref.read(homeServiceProvider).getsSearchPropertyListing(
        search: searchQuery,
        recordsPerPage: 10,
        pageNo: 1,
        agencyUniqueId: 'ba137a8612994',
      );
    });
  }
}

