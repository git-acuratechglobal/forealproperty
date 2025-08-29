import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AsyncWidget<T> extends StatelessWidget {
  final double height;
  final AsyncValue<T> value;
  final Widget Function(T) data;
  final void Function()? onRetry;
  final bool skipLoadingOnReload;
  final bool skipLoadingOnRefresh;
  final bool skipError;
  const AsyncWidget({
    super.key,
    required this.value,
    required this.data,
    this.onRetry,
    this.skipLoadingOnReload = false,
    this.skipLoadingOnRefresh = true,
    this.skipError = false,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      key: UniqueKey(),
      duration: const Duration(milliseconds: 250),
      child: value.when(
        data: data,
        loading: () => Center(
          child: LoadingWidget(
            key: UniqueKey(),
            height: height,
          ),
        ),
        error: (e, st) => ErrorCustomWidget(
          key: UniqueKey(),
          error: e,
          height: height,
          onRetry: onRetry,
        ),
        skipLoadingOnReload: skipLoadingOnReload,
        skipLoadingOnRefresh: skipLoadingOnRefresh,
        skipError: skipError,
      ),
    );
  }
}

class AsyncWidgetB<T> extends ConsumerWidget {
  final double height;
  final ProviderBase<AsyncValue<T>> provider;
  final Widget Function(T data) data;
  final bool skipLoadingOnReload;
  final bool skipLoadingOnRefresh;
  final bool skipError;

  const AsyncWidgetB({
    super.key,
    required this.provider,
    required this.data,
    this.skipLoadingOnReload = false,
    this.skipLoadingOnRefresh = true,
    this.skipError = false,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(provider);
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 250),
      child: value.when(
        data: data,
        loading: () => LoadingWidget(
          key: UniqueKey(),
          height: height,
        ),
        error: (e, st) => ErrorCustomWidget(
          key: UniqueKey(),
          error: e,
          height: height,
          onRetry: () => ref.refresh(provider),
        ),
        skipLoadingOnReload: skipLoadingOnReload,
        skipLoadingOnRefresh: skipLoadingOnRefresh,
        skipError: skipError,
      ),
    );
  }
}

class ErrorCustomWidget extends ConsumerWidget {
  final Object error;
  final VoidCallback? onRetry;
  final double height;
  const ErrorCustomWidget({
    required this.error,
    required this.onRetry,
    this.height = 200,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      key: UniqueKey(),
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error,
              color: Colors.red,
            ),
            const SizedBox(height: 16),
            Text(
              error.toString(),
              maxLines: 6,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.grey),
              ),
              onPressed: onRetry,
              child: const Text(
                "Retry",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  final double height;

  const LoadingWidget({
    super.key,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      key: UniqueKey(),
      size: Size.fromHeight(height),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoadingAnimationWidget.twistingDots(
            size: 35,
            rightDotColor: const Color.fromARGB(255, 191, 229, 238),
            leftDotColor: const Color(0xFF164C63),
          ),
          const SizedBox(height: 8),
          const Text(
            "Please wait",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

// class PaginationWidget<T> extends StatefulWidget {
//   final AsyncValue<PaginationResponse<T>> value;
//   final Widget? Function(int, T) itemBuilder;
//   final Widget separator;
//   final ScrollController? scrollController;
//   final VoidCallback onLoadMore;
//   final VoidCallback? retry;
//   final bool Function() canLoadMore;
//   final Axis scrollDirection;
//   final EdgeInsets? padding;
//   final Widget emptyWidget;

//   const PaginationWidget({
//     super.key,
//     required this.value,
//     required this.itemBuilder,
//     required this.onLoadMore,
//     required this.separator,
//     required this.emptyWidget,
//     required this.canLoadMore,
//     this.padding,
//     this.scrollDirection = Axis.vertical,
//     this.scrollController,
//     this.retry,
//   });

//   @override
//   State<PaginationWidget<T>> createState() => _PaginationWidgetState<T>();
// }

// class _PaginationWidgetState<T> extends State<PaginationWidget<T>> {
//   late ScrollController scrollController;

//   @override
//   void initState() {
//     super.initState();
//     scrollController = widget.scrollController ?? ScrollController();
//     scrollController.addListener(() {
//       if (widget.canLoadMore() &&
//           scrollController.position.pixels >= scrollController.position.maxScrollExtent) {
//         widget.onLoadMore.call();
//       }
//     });
//   }

//   @override
//   void dispose() {
//     scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AsyncWidget(
//       skipError: true,
//       onRetry: widget.retry,
//       value: widget.value,
//       data: (list) {
//         if (list.data.isEmpty) {
//           return widget.emptyWidget;
//         }
//         return AnimatedSwitcher(
//           duration: const Duration(milliseconds: 250),
//           child: ListView.separated(
//             padding: widget.padding,
//             scrollDirection: widget.scrollDirection,
//             controller: scrollController,
//             itemCount:
//                 list.data.length + (widget.value.isRefreshing || widget.value.hasError ? 1 : 0),
//             itemBuilder: (context, index) {
//               if (index != list.data.length) {
//                 return widget.itemBuilder(index, list.data[index]);
//               } else {
//                 if (widget.value.isRefreshing) {
//                   return Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text("Please wait"),
//                       8.horizontalSpace,
//                       Center(
//                         child: LoadingAnimationWidget.twistingDots(
//                           size: 30,
//                           rightDotColor: Colors.white,
//                           leftDotColor: Theme.of(context).colorScheme.primary,
//                         ),
//                       ),
//                     ],
//                   );
//                 } else if (widget.value.hasError) {
//                   return Container(
//                     margin: const EdgeInsets.only(bottom: 24.0),
//                     padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
//                     width: MediaQuery.sizeOf(context).width,
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         color: Colors.white.withOpacity(0.5),
//                       ),
//                     ),
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: Text(
//                             widget.value.error.toString(),
//                             maxLines: 2,
//                           ),
//                         ),
//                         8.horizontalSpace,
//                         OutlinedButton(
//                           onPressed: widget.onLoadMore,
//                           child: const Text(
//                             "Retry",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 } else {
//                   return const SizedBox.shrink();
//                 }
//               }
//             },
//             separatorBuilder: (BuildContext context, int index) {
//               return widget.separator;
//             },
//           ),
//         );
//       },
//     );
//   }
// }

class PaginationWidgetB<E, T extends PaginationResponse<E>>
    extends StatefulWidget {
  final AsyncValue<T> value;
  final Widget? Function(int, E) itemBuilder;
  final Widget separator;
  final ScrollController? scrollController;
  final VoidCallback onLoadMore;
  final VoidCallback? retry;
  final bool Function() canLoadMore;
  final Axis scrollDirection;
  final EdgeInsets? padding;
  final Widget emptyWidget;

  const PaginationWidgetB({
    super.key,
    required this.value,
    required this.itemBuilder,
    required this.onLoadMore,
    required this.separator,
    required this.emptyWidget,
    required this.canLoadMore,
    this.padding,
    this.scrollDirection = Axis.vertical,
    this.scrollController,
    this.retry,
  });

  @override
  State<PaginationWidgetB<E, T>> createState() =>
      _PaginationWidgetStateB<E, T>();
}

class _PaginationWidgetStateB<E, T extends PaginationResponse<E>>
    extends State<PaginationWidgetB<E, T>> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = widget.scrollController ?? ScrollController();
    scrollController.addListener(() {
      if (widget.canLoadMore() &&
          scrollController.position.pixels >=
              scrollController.position.maxScrollExtent) {
        widget.onLoadMore.call();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AsyncWidget(
      skipError: true,
      onRetry: widget.retry,
      value: widget.value,
      data: (list) {
        if (list.data.isEmpty) {
          return widget.emptyWidget;
        }
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          child: ListView.separated(
            padding: widget.padding,
            scrollDirection: widget.scrollDirection,
            controller: scrollController,
            itemCount: list.data.length +
                (widget.value.isRefreshing || widget.value.hasError ? 1 : 0),
            itemBuilder: (context, index) {
              if (index != list.data.length) {
                return widget.itemBuilder(index, list.data[index]);
              } else {
                if (widget.value.isRefreshing) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Please wait"),
                      8.horizontalSpace,
                      Center(
                        child: LoadingAnimationWidget.twistingDots(
                          size: 30,
                          rightDotColor: Colors.white,
                          leftDotColor: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  );
                } else if (widget.value.hasError) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 24.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.5),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.value.error.toString(),
                            maxLines: 2,
                          ),
                        ),
                        8.horizontalSpace,
                        OutlinedButton(
                          onPressed: widget.onLoadMore,
                          child: const Text(
                            "Retry",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              }
            },
            separatorBuilder: (BuildContext context, int index) {
              return widget.separator;
            },
          ),
        );
      },
    );
  }
}

class PaginationResponse<T> {
  final int currentPage;
  final int totalPages;
  final int totalItems;
  final List<T> data;

  PaginationResponse({
    required this.currentPage,
    required this.totalPages,
    required this.data,
    this.totalItems = 0,
  });

  bool get isCompleted => currentPage >= totalPages;

  PaginationResponse<T> copyWith({
    int? currentPage,
    int? totalPages,
    int? totalItems,
    List<T>? data,
  }) {
    return PaginationResponse<T>(
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
      totalItems: totalItems ?? this.totalItems,
      data: data ?? this.data,
    );
  }
}

class PaginationWidgetC<E, T extends PaginationResponse<E>> extends HookWidget {
  final AsyncValue<T> value;
  final Widget? Function(int, E) itemBuilder;
  final Widget separator;
  final ScrollController? scrollController;
  final VoidCallback onLoadMore;
  final VoidCallback? retry;
  final bool Function() canLoadMore;
  final Axis scrollDirection;
  final EdgeInsets? padding;
  final Widget emptyWidget;

  const PaginationWidgetC({
    super.key,
    required this.value,
    required this.itemBuilder,
    required this.onLoadMore,
    required this.separator,
    required this.emptyWidget,
    required this.canLoadMore,
    this.padding,
    this.scrollDirection = Axis.vertical,
    this.scrollController,
    this.retry,
  });

  @override
  Widget build(BuildContext context) {
    // final scrollController = useMemoized(() => ScrollController(), []);
    //
    // useEffect(() {
    //   void _onScroll() {
    //     print("working");
    //     if (canLoadMore() &&
    //         scrollController.position.pixels >=
    //             scrollController.position.maxScrollExtent) {
    //       onLoadMore.call();
    //     }
    //   }
    //   scrollController.addListener(_onScroll);
    //   return null;
    // }, [scrollController]);

    return AsyncWidget(
      skipError: true,
      onRetry: retry,
      value: value,
      data: (list) {
        if (list.data.isEmpty) {
          return emptyWidget;
        }
        return ListView.separated(
           physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: padding,
          scrollDirection: scrollDirection,
          // controller: scrollController,
          itemCount:
              list.data.length + (value.isRefreshing || value.hasError ? 1 : 0),
          itemBuilder: (context, index) {
            if (index != list.data.length) {
              return itemBuilder(index, list.data[index]);
            } else {
              if (value.isRefreshing) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Please wait"),
                    8.horizontalSpace,
                    Center(
                      child: LoadingAnimationWidget.twistingDots(
                        size: 30,
                        rightDotColor: Colors.white,
                        leftDotColor: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                );
              } else if (value.hasError) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 24.0),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.5),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          value.error.toString(),
                          maxLines: 2,
                        ),
                      ),
                      8.horizontalSpace,
                      OutlinedButton(
                        onPressed: onLoadMore,
                        child: const Text(
                          "Retry",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            }
          },
          separatorBuilder: (BuildContext context, int index) {
            return separator;
          },
        );
      },
    );
  }
}
