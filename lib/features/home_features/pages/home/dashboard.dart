import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/auth_feature/provider/auth_provider.dart';
import 'package:foreal_property/features/home_features/pages/home/properties/popupimage.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/addproperty.dart';
import 'package:foreal_property/features/auth_feature/pages/sign_up_page/updateprofile.dart';

class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard> {
  final List<Map<String, dynamic>> dashboardItems = [
    {
      'text': 'Number of Sales',
      'text2': '\$3,633',
      'text3': '9.0% vs Last Month',
      'color': Color(0xFF12B347),
      'image': 'assets/images/vector6.png'
    },
    {
      'text': 'Property Viewers',
      'text2': '53.4%',
      'text3': ' 7.0% vs Last Month',
      'color': Color(0xFFF43232),
      'image': 'assets/images/vectorred.png'
    },
    {
      'text': 'Completed Deals',
      'text2': '1,297',
      'text3': ' 10.0% vs Last Month',
      'color': Color(0xFF12B347),
      'image': 'assets/images/vector6.png'
    },
    {
      'text': 'Total Revenue',
      'text2': '\$45.3K',
      'text3': '9.0% vs Last Month',
      'color': Color(0xFF12B347),
      'image': 'assets/images/vector6.png'
    },
  ];

  final List<Map<String, dynamic>> openhomesitem = [
    {
      'image': 'assets/images/homes.png',
      'title': '780 Bourke Street, Moore Park, 2021',
      'title2': 'Residential House ',
      'date': '13',
      'month': 'FEB'
    },
    {
      'image': 'assets/images/homes.png',
      'title': '780 Bourke Street, Moore Park, 2021',
      'title2': 'Appartment',
      'date': '09',
      'month': 'FEB'
    },
    {
      'image': 'assets/images/homes.png',
      'title': '780 Bourke Street, Moore Park, 2021',
      'title2': 'Residential House ',
      'date': '13',
      'month': 'FEB'
    },
    {
      'image': 'assets/images/homes.png',
      'title': '780 Bourke Street, Moore Park, 2021',
      'title2': 'Appartment ',
      'date': '08',
      'month': 'FEB'
    },
    {
      'image': 'assets/images/homes.png',
      'title': '780 Bourke Street, Moore Park, 2021',
      'title2': 'Residential House ',
      'date': '13',
      'month': 'FEB'
    }
  ];
  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProvider);
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80), child: Customappbar()),
        backgroundColor: Color(0xFFEBF3F5),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              31.verticalSpace,
              Text(
                'Hello ${user?.firstName ?? 'User'}!',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: const Color(0xFF1A1B28),
                    ),
              ),
              Text(
                'Welcome to the Dashboard.',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Color(0xFF494D60),
                    ),
              ),
              24.verticalSpace,
              Container(
                height: 106.h,
                // width: 343.w,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
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
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          20.verticalSpace,
                          Text(
                            'Add New Property',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          16.verticalSpace,
                          SizedBox(
                            width: 110.w,
                            height: 28.h,
                            child: ElevatedButton(
                              onPressed: () {
                                context.navigateTo(AddProperty());
                              },
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/add.png",
                                    height: 8.h,
                                    width: 8.w,
                                  ),
                                  3.horizontalSpace,
                                  Text(
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
                        padding: EdgeInsets.only(top: 15.0),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/rectangle.png',
                              // width: 185.w,
                              height: 91.h,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 34),
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
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: dashboardItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                    child: Text('See all',
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Color(0xFF164C63),
                            )),
                  ),
                ],
              ),
              20.verticalSpace,
              SizedBox(
                height: 300.h,
                child: ListView.separated(
                  itemCount: openhomesitem.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  separatorBuilder: (context, index) => 10.horizontalSpace,
                  itemBuilder: (_, index) {
                    final items = openhomesitem[index];

                    return OpenHomes(
                      items['image'],
                      items['title'],
                      items['title2'],
                      items['date'],
                      items['month'],
                    );
                  },
                ),
              ),
              64.verticalSpace,
            ],
          ),
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
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 20),
      child: AppBar(
        backgroundColor: Color(0xFFEBF3F5),
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
              InkWell(
                  onTap: () {
                    context.navigateTo(Updateprofile());
                  },
                  child: Image.asset(
                    'assets/images/profile1.png',
                    height: 44.h,
                    width: 44.w,
                  )),
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
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AutoSizeText(
                widget.text,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color(0xFF494D60),
                    ),
              ),
            ),
            Expanded(
              child: AutoSizeText(
                widget.text2,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Color(0xFF1A1B28),
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

class OpenHomes extends ConsumerStatefulWidget {
  final String image;
  final String title;
  final String title2;
  final String date;
  final String month;

  const OpenHomes(this.image, this.title, this.title2, this.date, this.month,
      {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OpenHomesState();
}

class _OpenHomesState extends ConsumerState<OpenHomes> {
  void _showDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Dismiss",
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Align(
            alignment: Alignment.center,
            child: Material(
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Popupimage2(),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          InkWell(
            onTap: () {
              _showDialog(context);
            },
            child: Image.asset(
              widget.image,
              height: 147.h,
              // width: 164.w,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8, left: 8),
            child: Container(
              height: 44.h,
              width: 44.w,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(width: 1, color: Color(0xFF3B7DBF)),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.date,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF3B7DBF),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    widget.month,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF494D60),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
        8.verticalSpace,
        SizedBox(
          width: 130.w,
          child: Text(
            widget.title,
            style: Theme.of(context).textTheme.bodyLarge,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        4.verticalSpace,
        SizedBox(
          width: 120.w,
          child: Text(
            widget.title2,
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
              height: 1.30,
              color: Color(0xFF494D60),
            ),
          ),
        ),
        64.verticalSpace
      ],
    );
  }
}
