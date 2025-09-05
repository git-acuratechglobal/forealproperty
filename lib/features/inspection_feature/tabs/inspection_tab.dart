import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/inspection_feature/pages/property_inspection_details/inspection_details.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_list_provider.dart';
import 'package:foreal_property/features/inspection_feature/tabs/widgets/inspection_card_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../core/utils/custom_refreshIndicator.dart';
import '../model/inspection_list_model.dart';

class InspectionTab extends HookConsumerWidget {
  const InspectionTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inspectionNotifier =
        ref.read(inspectionListNotifierProvider.notifier);

    final scrollController = useMemoized(() => ScrollController(), []);

    useEffect(() {
      void _onScroll() {
        if (inspectionNotifier.canLoadMore() &&
            scrollController.position.pixels >=
                scrollController.position.maxScrollExtent) {
          inspectionNotifier.loadMoreData();
        }
      }

      scrollController.addListener(_onScroll);
      return () {
        scrollController.removeListener(_onScroll);
      };
    }, [scrollController]);
    return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: CustomRefreshIndicator(
          onRefresh: () async => ref.refresh(inspectionListNotifierProvider),
          child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              slivers: [
                _CustomSliverAppBar(
                  onSearch: (val) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      inspectionNotifier.searchData(search: val);
                    });
                  },
                  onClear: () {
                    inspectionNotifier.searchData(search: "");
                  },
                ),
                SliverToBoxAdapter(
                  child: PaginationWidgetC(
                      retry: () => ref.refresh(inspectionListNotifierProvider),
                      value: ref.watch(inspectionListNotifierProvider),
                      itemBuilder: (index, InspectionListModel data) =>
                          GestureDetector(
                              onTap: () {
                                context.push(PropertyInspectionDetails(
                                  inspectionId: data.inspectionId ?? 0,
                                  inspectionUniqueId:
                                      data.inspectionUniqueId ?? "",
                                ));
                              },
                              child: InspectionCardWidget(obj: data)),
                      onLoadMore: inspectionNotifier.loadMoreData,
                      separator: 16.verticalSpace,
                      emptyWidget: const SizedBox(),
                      canLoadMore: inspectionNotifier.canLoadMore),
                ),
              ]),
        ));
  }
}

class _CustomSliverAppBar extends HookWidget {
  const _CustomSliverAppBar({this.onSearch, this.onClear});
  final void Function(String?)? onSearch;
  final void Function()? onClear;
  @override
  Widget build(BuildContext context) {
    final searchController = useMemoized(() => TextEditingController(), []);
    final debouncedValue = useDebounced(
      searchController.value.text,
      const Duration(seconds: 1),
    );
    useEffect(() {
      if (debouncedValue != null && debouncedValue.isNotEmpty) {
        onSearch?.call(debouncedValue);
      }
      return null;
    }, [debouncedValue]);

    useListenable(searchController);

    return SliverAppBar(
      titleSpacing: 0,
      toolbarHeight: 100,
      backgroundColor: const Color(0xFFEBF3F5),
      floating: true,
      //snap: true,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: TextFormField(
              controller: searchController,
              textInputAction: TextInputAction.search,
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
              // onFieldSubmitted: (value) {},
              decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: const Color(0xFFB9B9B9),
                      ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(
                      'assets/images/search-normal.png',
                      height: 16,
                      width: 16,
                      color: const Color(0xFFB9B9B9),
                    ),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: searchController.text != ""
                      ? IconButton(
                          icon:
                              const Icon(Icons.close, color: Color(0xFFB9B9B9)),
                          onPressed: () {
                            searchController.clear();
                            onClear?.call();
                          },
                        )
                      : null),
              cursorColor: Colors.black,
            ),
          ),
          10.horizontalSpace,
          Image.asset(
            'assets/images/filter1.png',
            height: 45.h,
            width: 45.w,
          ),
        ],
      ),
    );
  }
}
