import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/s3_sigleton/s3_widget.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/auth_feature/provider/auth_provider.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/house.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/address.dart';
import 'package:foreal_property/features/home_features/providers/openhomelist.dart';
import 'package:intl/intl.dart';

class Dashboard extends ConsumerStatefulWidget {
  final VoidCallback? onOpenHomesTap;
  const Dashboard({super.key, this.onOpenHomesTap});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard> with AutomaticKeepAliveClientMixin{
  @override
  bool get wantKeepAlive => true;
  final List<Map<String, dynamic>> dashboardItems = [
    {
      'text': 'Properties Listed',
      'text2': '\$3,633',
      'text3': '9.0% vs Last Month',
      'color': const Color(0xFF12B347),
      'image': 'assets/images/vector6.png'
    },
    {
      'text': 'Contacts',
      'text2': '53.4%',
      'text3': ' 7.0% vs Last Month',
      'color': const Color(0xFFF43232),
      'image': 'assets/images/vectorred.png'
    },
    {
      'text': 'Completed Deals',
      'text2': '1,297',
      'text3': ' 10.0% vs Last Month',
      'color': const Color(0xFF12B347),
      'image': 'assets/images/vector6.png'
    },
    {
      'text': 'Total Revenue',
      'text2': '\$45.3K',
      'text3': '9.0% vs Last Month',
      'color': const Color(0xFF12B347),
      'image': 'assets/images/vector6.png'
    },
  ];

  bool isCurrent = true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final user = ref.watch(userProvider);

    final openHomes = ref.watch(openHomeListProvider(isCurrent: isCurrent));
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(80), child: Customappbar()),
        backgroundColor: const Color(0xFFEBF3F5),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: AsyncWidget(
            onRetry: () async =>  ref.refresh(openHomeListProvider(isCurrent: isCurrent)),
              value: openHomes,
              data: (openHomeData) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    31.verticalSpace,
                    Text(
                      'Hello ${user?.firstName ?? 'User'}!',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: const Color(0xFF1A1B28),
                              ),
                    ),
                    Text(
                      'Welcome to the Dashboard.',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: const Color(0xFF494D60),
                          ),
                    ),
                    24.verticalSpace,
                    Container(
                      height: 106.h,
                      // width: 343.w,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFF3B7DBF), Color(0xFF75CBCD)],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                20.verticalSpace,
                                const Text(
                                  'Add New Property',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                16.verticalSpace,
                                SizedBox(
                                  width: 120.w,
                                  height: 28.h,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      context.push(const AdressWidget(
                                        isEdit: true,
                                      ));
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/add.png",
                                          height: 8.h,
                                          width: 8.w,
                                        ),
                                        3.horizontalSpace,
                                        const Text(
                                          'Add Now',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF1A1B28),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            height: 1.40,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/rectangle.png',
                                    // width: 185.w,
                                    height: 91.h,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 34),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/images/home.png',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    24.verticalSpace,
                    GridView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: dashboardItems.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 16,
                              crossAxisSpacing: 16,
                              childAspectRatio: 1.3),
                      itemBuilder: (context, index) {
                        final item = dashboardItems[index];
                        return DashboardContainer(item['text'], item['text2'],
                            item['text3'], item['color'], item['image']);
                      },
                    ),
                    32.verticalSpace,
                    Row(
                      children: [
                        Text(
                          'Recent Open Homes',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              context.push(const House());
                         //     widget.onOpenHomesTap?.call();
                            },
                            child: Text('See all',
                                textAlign: TextAlign.end,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: const Color(0xFF164C63),
                                    )),
                          ),
                        ),
                      ],
                    ),
                    20.verticalSpace,
                    SizedBox(
                      height: 250.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        // physics: NeverScrollableScrollPhysics(),
                        itemCount: openHomeData!.length,
                        separatorBuilder: (context, index) =>
                            20.horizontalSpace,
                        itemBuilder: (context, index) {
                          final date = openHomeData[index].eventDate;
                          final formattedDate = date != null
                              ? DateFormat('MMM dd')
                                  .format(date) // e.g. "06 Jun"
                              : '';
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      //    _showDialog2(context);
                                    },
                                    child: SizedBox(
                                      height: 147.h,
                                      width: 172.w,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: openHomeData[index]
                                                      .propertyPic
                                                      ?.isNotEmpty ==
                                                  true
                                              ? S3ImageDisplayWidget(
                                                  imagePath: openHomeData[index]
                                                      .propertyPic!,
                                                )
                                              : Image.asset(
                                                  'assets/images/placeholder.png',
                                                  height: 72.h,
                                                  width: 72.w,
                                                  fit: BoxFit.cover,
                                                )),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 8),
                                    child: Container(
                                      height: 44.h,
                                      width: 44.w,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: const BorderSide(
                                              width: 1,
                                              color: Color(0xFF3B7DBF)),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            formattedDate,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: const Color(0xFF3B7DBF),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          // Text(
                                          //   widget.month,
                                          //   textAlign: TextAlign.center,
                                          //   style: TextStyle(
                                          //     color: Color(0xFF494D60),
                                          //     fontSize: 10.sp,
                                          //     fontWeight: FontWeight.w500,
                                          //   ),
                                          // )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              8.verticalSpace,
                              SizedBox(
                                width: 130.w,
                                child: Text(
                                  openHomeData[index].property.toString(),
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              4.verticalSpace,
                              SizedBox(
                                width: 120.w,
                                child: Text(
                                  openHomeData[index].heading.toString(),
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    
                                    fontWeight: FontWeight.w400,
                                    height: 1.30,
                                    color: const Color(0xFF494D60),
                                  ),
                                  maxLines: 2,
                                ),
                              ),
                              10.verticalSpace,
                            ],
                          );
                        },
                      ),
                    ),
                    145.verticalSpace,
                  ],
                );
              }),
        ));
  }
}

class Customappbar extends StatefulWidget {
  const Customappbar({super.key});

  @override
  State<Customappbar> createState() => _CustomappbarState();
}

class _CustomappbarState extends State<Customappbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 20),
      child: AppBar(
        backgroundColor: const Color(0xFFEBF3F5),
        automaticallyImplyLeading: false,
        title: Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              'assets/images/logo.png',
              width: 114.w,
              height: 28.01.h,
            )),
        actions: [
          Row(
            children: [
              InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/notify.png',
                    height: 44.h,
                    width: 44.w,
                  )),
              // InkWell(
              //     onTap: () {
              //       context.navigateTo(Updateprofile());
              //     },
              //     child: Image.asset(
              //       'assets/images/profile1.png',
              //       height: 44.h,
              //       width: 44.w,
              //     )),
            ],
          )
        ],
      ),
    );
  }
}

class DashboardContainer extends ConsumerStatefulWidget {
  final String text;
  final String text2;
  final String text3;
  final Color text3color;
  final String imagePath;

  const DashboardContainer(
      this.text, this.text2, this.text3, this.text3color, this.imagePath,
      {super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DashboardContainerState();
}

class _DashboardContainerState extends ConsumerState<DashboardContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  width: 165.w,
      // height: 130.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AutoSizeText(
                maxLines: 2,
                widget.text,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: const Color(0xFF494D60),
                    ),
              ),
            ),
            Expanded(
              child: AutoSizeText(
                widget.text2,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: const Color(0xFF1A1B28),
                    ),
              ),
            ),
            20.verticalSpace,
            SizedBox(
              // width: 120,
              child: Row(
                children: [
                  Expanded(
                    child: AutoSizeText(
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      widget.text3,
                      style: TextStyle(
                        color: widget.text3color,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  7.horizontalSpace,
                  Image.asset(
                    widget.imagePath,
                    width: 13,
                    color: widget.text3color,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
