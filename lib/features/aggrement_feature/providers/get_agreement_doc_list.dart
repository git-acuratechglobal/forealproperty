import 'package:foreal_property/core/services/agreement_service/agreement_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/widgets/asyncwidget.dart';
import '../model/agreement_document_model.dart';
part 'get_agreement_doc_list.g.dart';

@riverpod
class GetAgreementDocList extends _$GetAgreementDocList {
  @override
  FutureOr<PaginationResponse<AgreementDocument>> build() async {
    return _getDocList();
  }

  Future<PaginationResponse<AgreementDocument>> _getDocList() async {
    return ref.watch(agreementServiceProvider).getAgreementDocList();
  }

  Future<void> getDocType({bool? isCompleted}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      return await ref
          .read(agreementServiceProvider)
          .getAgreementDocList(isCompleted: isCompleted);
    });
  }

  Future<void> loadMoreData({int? page, bool? isCompleted}) async {
    try {
      final paginationResponse = state.valueOrNull;
      if (paginationResponse != null &&
          !paginationResponse.isCompleted &&
          canLoadMore()) {
        state = const AsyncLoading<PaginationResponse<AgreementDocument>>()
            .copyWithPrevious(state);
        await Future.delayed(const Duration(seconds: 1));
        final currentPage = paginationResponse.currentPage;
        final response = await ref
            .read(agreementServiceProvider)
            .getAgreementDocList(
                page: currentPage + 1, isCompleted: isCompleted);
        state = AsyncData(
          PaginationResponse(
            currentPage: response.currentPage,
            totalPages: response.totalPages,
            data: [...paginationResponse.data, ...response.data],
          ),
        );
      }
    } catch (e, st) {
      state = AsyncError<PaginationResponse<AgreementDocument>>(e, st)
          .copyWithPrevious(state);
    }
  }

  Future<void> refreshData(bool? isCompleted) async {
    await Future.delayed(const Duration(seconds: 1));
    state = await AsyncValue.guard(() async {
      return await ref
          .read(agreementServiceProvider)
          .getAgreementDocList(isCompleted: isCompleted);
    });
  }

  Future<void> searchData({
    String? search,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      return await ref.read(agreementServiceProvider).getAgreementDocList(
            search: search,
          );
    });
  }

  bool canLoadMore() {
    if (state.isLoading) return false;
    if (!state.hasValue) return false;
    if (state.requireValue.isCompleted) return false;
    return true;
  }
}
