import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/utils/appsnackbar.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';
import 'package:foreal_property/features/home_features/add_property_state/add_property_state.dart';
import 'package:foreal_property/features/home_features/models/get_property_details.dart';
import 'package:foreal_property/features/home_features/pages/home/bottomnavbar.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/address.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/aggrement.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/attributes.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/fees.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/legal.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/ownership.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/photos.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/propertylisting.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/uploadpropert.dart';
import 'package:foreal_property/features/home_features/providers/get_property_list.dart';

class AddProperty extends ConsumerStatefulWidget {
  const AddProperty({
    super.key,
    this.propertyData,
    this.propertyUniqueId,
    this.propertyId,
    this.selectedTabIndex = 0,
    this.isEditMode = false,
    this.selectedInnerTabIndex,
  });
  final PropertyDetailModel? propertyData;
  final String? propertyUniqueId;
  final int? propertyId;
  final int selectedTabIndex;
  final bool? isEditMode;
  final int? selectedInnerTabIndex;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddPropertyState();
}

class _AddPropertyState extends ConsumerState<AddProperty>
    with TickerProviderStateMixin {
  final PageController addPropertyPageController = PageController();
  int currentPageIndex = 0;

  late TabController propertyTabController;
  late TabController ownershipTabController;
  late TabController listingTabController;

  late List<Widget> addPropertyWidgetList = [
    PropertyTabWidget(
      tabController: propertyTabController,
      propertyData: widget.propertyData,
      propertyId: widget.propertyId,
    ),
    OwnershipTabWidget(
      tabController: ownershipTabController,
      propertyData: widget.propertyData,
      propertyUniqueId: widget.propertyData!.propertyUniqueId,
    ),
    ListingTabWidget(
      tabController: listingTabController,
      propertyData: widget.propertyData,
      initialTabIndex: widget.selectedInnerTabIndex ?? 0,
    ),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      currentPageIndex = widget.selectedTabIndex;
      addPropertyPageController.jumpToPage(currentPageIndex);
    });
    propertyTabController = TabController(
      length: 2,
      vsync: this,
    );

    ownershipTabController = TabController(
      length: 3,
      vsync: this,
    );
    listingTabController = TabController(
      length: 3,
      vsync: this,
    );

    ref.listenManual(propertyNotifierProvider, (_, next) {
      print('Provider state changed: $next');
      switch (next) {
        case AsyncData<AddPropertyState?> data when data.value != null:
          final addPropertyState = data.value;

          if (addPropertyState?.addPropertyEvent ==
              AddPropertyEvent.addressUpdate) {
            if (currentPageIndex == 0) {
              final response = (addPropertyState?.response ?? "").toLowerCase();

              if (response == "record updated successfully") {
                if (propertyTabController.index <
                    propertyTabController.length - 1) {
                  propertyTabController
                      .animateTo(propertyTabController.index + 1);
                }
                Utils.showSnackBar(context, addPropertyState?.response ?? "");
              }
            }
          }

          if (addPropertyState?.addPropertyEvent ==
              AddPropertyEvent.addPropertyAttribute) {
            if (currentPageIndex == 0) {
              final response = (addPropertyState?.response ?? "").toLowerCase();

              if (response == "attribute added successfully" ||
                  response == "record updated successfully") {
                if (propertyTabController.index <
                    propertyTabController.length - 1) {
                  propertyTabController
                      .animateTo(propertyTabController.index + 1);
                }
                if (currentPageIndex < addPropertyWidgetList.length - 1) {
                  addPropertyPageController.nextPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                }
              }

              Utils.showSnackBar(context, addPropertyState?.response ?? "");
            }
          }

          if (addPropertyState?.addPropertyEvent == AddPropertyEvent.contact ||
              addPropertyState?.addPropertyEvent ==
                  AddPropertyEvent.updateContact) {
            if (currentPageIndex == 1) {
              final response = (addPropertyState?.response ?? "").toLowerCase();

              if (response == "contact added successfully" ||
                  response == "contact details updated successfully") {
                // Switch tab
                if (ownershipTabController.index <
                    ownershipTabController.length - 1) {
                  ownershipTabController
                      .animateTo(ownershipTabController.index + 1);
                }

                // Switch page
                if (currentPageIndex < addPropertyWidgetList.length - 1) {
                  addPropertyPageController.nextPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                }
              }

              //Show the response
              Utils.showSnackBar(context, addPropertyState?.response ?? "");
            }
          }

          if (addPropertyState?.addPropertyEvent == AddPropertyEvent.addImage) {
            if (currentPageIndex == 2) {
              final response = (addPropertyState?.response ?? "").toLowerCase();
              if (response == "record updated successfully") {
                if (listingTabController.index <
                    listingTabController.length - 2) {
                  listingTabController
                      .animateTo(listingTabController.index + 2);
                }
                Utils.showSnackBar(context, addPropertyState?.response ?? "");
              }
            }
          }
          if (addPropertyState?.addPropertyEvent == AddPropertyEvent.listing) {
            if (currentPageIndex == 2) {
              final response = (addPropertyState?.response ?? "").toLowerCase();
              if (response == "record updated successfully" ||
                  response == "listing already exists") {
                if (listingTabController.index <
                    listingTabController.length - 2) {
                  listingTabController
                      .animateTo(listingTabController.index + 2);
                }
                Utils.showSnackBar(context, addPropertyState?.response ?? "");
              }
            }
            ref.invalidate(getAddedPropertyListProvider);

            _showDialog(context, 1);
          }

          break;
      }
    });
  }

  @override
  void dispose() {
    addPropertyPageController.dispose();
    propertyTabController.dispose();
    ownershipTabController.dispose();
    listingTabController.dispose();
    super.dispose();
  }

  void _showDialog(BuildContext context, int targetTabIndex) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Dismiss",
      barrierColor: Colors.black.withValues(alpha: 0.3), // fixed dim layer
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return  Center(
          child: Material(
            color: Colors.transparent,
            child: Uploadpropert(targetTabIndex: 1,  onNavigateTo: () => const HomeScreen(selectTab: 1, ),), // 👈 Keep blur inside this widget
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.easeIn;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Property',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF1A1B28),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: InkWell(
            onTap: () {
              if (addPropertyPageController.page != null &&
                  addPropertyPageController.page! > 0) {
                addPropertyPageController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              } else {
                context.pop();
              }
            },
            child: Image.asset(
              'assets/images/arrow-left.png',
              height: 16,
              width: 16,
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(140),
          child: Column(
            children: [
              StepperWidget(
                activeStep: currentPageIndex,
                onStepChanged: (int index) {
                  addPropertyPageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              const Divider(
                height: 1,
                color: Color(0xFFE2E2E2),
              ),
              20.verticalSpace,
            ],
          ),
        ),
      ),
      body: PageView.builder(
        controller: addPropertyPageController,
        onPageChanged: (value) {
          setState(() {
            currentPageIndex = value;
          });
        },
        itemCount: addPropertyWidgetList.length,
        itemBuilder: (BuildContext context, int index) {
          return addPropertyWidgetList[index];
        },
      ),
    );
  }
}

class PropertyTabWidget extends StatelessWidget {
  const PropertyTabWidget(
      {super.key,
      required this.tabController,
      this.propertyData,
      this.propertyId});
  final PropertyDetailModel? propertyData;
  final int? propertyId;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    List<String> propertytablist = ['Address', 'Attributes'];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: AddPropertyTab(
            tabController: tabController,
            tablist: propertytablist,
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              AdressWidget(
                propertyData: propertyData,
                PropertyId: propertyData!.propertyId,
              ),
              AttributeWidget(
                propertyData: propertyData,
                PropertyId: propertyData!.propertyId,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OwnershipTabWidget extends StatelessWidget {
  final PropertyDetailModel? propertyData;
  final String? propertyUniqueId;
  const OwnershipTabWidget(
      {super.key,
      required this.tabController,
      this.propertyData,
      this.propertyUniqueId});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    List<String> propertytablist = ['Ownership', 'Aggrement', 'Fees'];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: AddPropertyTab(
            tabController: tabController,
            tablist: propertytablist,
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              OwnershipWidget(
                propertyData: propertyData,
                propertyUniqueId: propertyData!.propertyUniqueId,
                //   contactUniqueId: propertyData!.contactlistModel?[0].contactUId,
              ),
              const AggrementWidget(),
              const FeesWidget()
            ],
          ),
        ),
      ],
    );
  }
}

class ListingTabWidget extends StatelessWidget {
  final PropertyDetailModel? propertyData;
  final int initialTabIndex;

  const ListingTabWidget({
    super.key,
    required this.tabController,
    required this.initialTabIndex,
    this.propertyData,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    List<String> propertytablist = ['Photos', 'Legal', 'PropertyListing'];

    // Jump to selected tab in TabController (inside ListingTabWidget)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (tabController.index != initialTabIndex) {
        tabController.animateTo(initialTabIndex);
      }
    });

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: AddPropertyTab(
            tabController: tabController,
            tablist: propertytablist,
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              Photos(propertyData: propertyData),
              const Legal(),
              PropertyListing(propertyData: propertyData),
            ],
          ),
        ),
      ],
    );
  }
}

class StepperWidget extends StatefulWidget {
  const StepperWidget({
    super.key,
    required this.activeStep,
    this.onStepChanged,
  });

  final int activeStep;
  final ValueChanged<int>? onStepChanged;

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  @override
  Widget build(BuildContext context) {
    List<({int index, String name})> stepTitles = [
      (index: 1, name: 'Property'),
      (index: 2, name: 'Ownership'),
      (index: 3, name: 'Listings'),
    ];

    return EasyStepper(
      disableScroll: true,
      activeStepBackgroundColor: const Color(0xFF75CBCD),
      unreachedStepBackgroundColor: const Color(0xFFF4F9FC),
      finishedStepBackgroundColor: const Color(0xFF75CBCD),
      finishedStepTextColor: const Color(0xFF494D60),
      activeStepTextColor: const Color(0xFF164C63),
      activeStepBorderColor: const Color(0xFFE2E2E2),
      finishedStepBorderColor: const Color(0xFFE2E2E2),
      unreachedStepTextColor: const Color(0xFF494D60),
      internalPadding: 0,
      stepRadius: 20,
      showLoadingAnimation: false,
      lineStyle: const LineStyle(
        lineLength: 80,
        lineType: LineType.normal,
        lineThickness: 1,
        lineSpace: 0,
        unreachedLineType: LineType.normal,
        defaultLineColor: Color(0xFFE2E2E2),
      ),
      activeStep: widget.activeStep,
      onStepReached: (index) {
        if (widget.onStepChanged != null) {
          widget.onStepChanged!(index);
        }
      },
      steps: List.generate(
        stepTitles.length,
        (index) => EasyStep(
          customStep: widget.activeStep > index
              ? const Icon(Icons.check, color: Colors.white)
              : Text(
                  stepTitles[index].index.toString(),
                  style: TextStyle(
                    color: widget.activeStep == index
                        ? Colors.white
                        : const Color(0xFF81838B),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                ),
          customTitle: Text(
            stepTitles[index].name,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: widget.activeStep == index
                  ? FontWeight.w700
                  : FontWeight.w400,
              color: widget.activeStep == index
                  ? const Color(0xFF164C63)
                  : const Color(0xFF494D60),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class AddPropertyTab extends StatefulWidget {
  final TabController tabController;
  final List<String> tablist;
  const AddPropertyTab(
      {super.key, required this.tabController, required this.tablist});

  @override
  State<AddPropertyTab> createState() => _AddPropertyTabState();
}

class _AddPropertyTabState extends State<AddPropertyTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40.h,
        decoration: ShapeDecoration(
          color: const Color(0xFFEBF3F5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          unselectedLabelStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF164C63),
          ),
          labelStyle: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.white),
          dividerColor: Colors.transparent,
          controller: widget.tabController,
          indicatorColor: Colors.transparent,
          indicatorPadding: const EdgeInsets.symmetric(vertical: 2),
          indicator: BoxDecoration(
              color: const Color(0xFF164C63),
              borderRadius: BorderRadius.circular(10)),
          tabs: List.generate(widget.tablist.length, (index) {
            return SizedBox(
              width: 160,
              height: 32,
              child: Center(
                  child: Text(
                widget.tablist[index],
                overflow: TextOverflow.ellipsis,
              )),
            );
          }),
        ));
  }
}
