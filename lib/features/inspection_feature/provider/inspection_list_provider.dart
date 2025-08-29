import 'package:foreal_property/core/services/inspection_service/inspection_service.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/inspection_list_model.dart';
part 'inspection_list_provider.g.dart';

@Riverpod(keepAlive: true)
class InspectionListNotifier extends _$InspectionListNotifier {
  @override
  FutureOr<PaginationResponse<InspectionListModel>> build() async {
    return _getData();
  }

  Future<PaginationResponse<InspectionListModel>> _getData() async {
    return ref.watch(inspectionServiceProvider).getInspectionList();
  }

  Future<void> loadMoreData({int? page}) async {
    try {
      final paginationResponse = state.valueOrNull;
      if (paginationResponse != null &&
          !paginationResponse.isCompleted &&
          canLoadMore()) {
        state = const AsyncLoading<PaginationResponse<InspectionListModel>>()
            .copyWithPrevious(state);
        final currentPage = paginationResponse.currentPage;
        final response = await ref
            .read(inspectionServiceProvider)
            .getInspectionList(page: currentPage + 1);
        state = AsyncData(
          PaginationResponse(
            currentPage: response.currentPage,
            totalPages: response.totalPages,
            data: [...paginationResponse.data, ...response.data],
          ),
        );
      }
    } catch (e, st) {
      state = AsyncError<PaginationResponse<InspectionListModel>>(e, st)
          .copyWithPrevious(state);
    }
  }

  Future<void> searchData({String? search}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      return await ref
          .read(inspectionServiceProvider)
          .getInspectionList(search: search);
    });
  }

  bool canLoadMore() {
    if (state.isLoading) return false;
    if (!state.hasValue) return false;
    if (state.requireValue.isCompleted) return false;
    return true;
  }
}
