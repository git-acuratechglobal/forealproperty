import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/aggrement.dart';

class PropertyDetails extends ConsumerStatefulWidget {
  const PropertyDetails({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PropertyDetailsState();
}

class _PropertyDetailsState extends ConsumerState<PropertyDetails> {
  final List<String> features = [
    'Balcony',
    'Gym',
    'Air Conditioning',
    'Floorboards',
    'Outdoor Spa',
    'Open FirePlace',
    'Remote Garage',
    'Grey Water System',
    'Hydraulic Heating',
    'Dishwasher',
    'Alarm System'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 90,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.all(12.0),
            child: InkWell(
              onTap: () {
                context.pop();
              },
              child: Image.asset(
                'assets/images/arrow-left.png',
              ),
            ),
          ),
          title: Text(
            'Property Details',
            style: TextStyle(
              color: const Color(0xFF1A1B28),
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Image.asset(
                'assets/images/edit-2.png',
                color: Color(0xFF292D32),
                height: 24,
                width: 24,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/properties.png'),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 64.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/sold.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                        child: Text(
                          'Sold',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      // width: 64.w,
                      // height: 30.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/notes.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/document-text-2.png',
                              height: 20,
                              width: 20,
                            ),
                            4.horizontalSpace,
                            Text(
                              'Notes',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              20.verticalSpace,
              Row(
                children: [
                  Text(
                    'RESIDENTIAL',
                    style: TextStyle(
                      color: const Color(0xFF164C63),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/edit-2.png',
                    color: Color(0xFF292D32),
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
              Text(
                '\$973,000',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              11.verticalSpace,
              Row(
                children: [
                  Image.asset(
                    'assets/images/location-3.png',
                    height: 16.h,
                    width: 16.w,
                  ),
                  2.horizontalSpace,
                  Expanded(
                    child: AutoSizeText(
                      '780 Bourke Street, Moore Park, 2021',
                      style: TextStyle(
                        color: Color(0xFF1A1B28),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              25.verticalSpace,
              Divider(
                height: 1,
                color: Color(0xFFE2E2E2),
              ),
              19.verticalSpace,
              Row(
                children: [
                  Image.asset(
                    'assets/images/bed.png',
                    height: 20.h,
                    width: 20.w,
                  ),
                  8.horizontalSpace,
                  Expanded(
                    child: AutoSizeText(
                      '3 Beds',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Color(0xFF1A1B28),
                          ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/bathtub.png',
                    height: 20.h,
                    width: 20.w,
                  ),
                  8.horizontalSpace,
                  Expanded(
                    child: AutoSizeText(
                      '3 Baths',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Color(0xFF1A1B28),
                          ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/scale.png',
                    height: 20.h,
                    width: 20.w,
                  ),
                  8.horizontalSpace,
                  Expanded(
                    child: AutoSizeText(
                      '1,975 sqft.',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Color(0xFF1A1B28),
                          ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/edit-2.png',
                    color: Color(0xFF292D32),
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
              16.verticalSpace,
              Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: const Color(0xFFE2E2E2),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'GARAGE SPACE',
                            style: TextStyle(
                              color: const Color(0xFF494D60),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '65%',
                                  style: TextStyle(
                                    color: const Color(0xFF1A1B28),
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: ' · \$5000',
                                  style: TextStyle(
                                    color: const Color(0xFF1A1B28),
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.right,
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 1,
                      color: Color(0xFFE2E2E2),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                          title: 'TOILETS', title2: '24/11/2024'),
                    ),
                    Divider(
                      height: 1,
                      color: Color(0xFFE2E2E2),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                          title: 'ENSUITES', title2: '\$5000'),
                    ),
                    Divider(
                      height: 1,
                      color: Color(0xFFE2E2E2),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                          title: 'LIVING AREAS', title2: '\$0'),
                    ),
                    Divider(
                      height: 1,
                      color: Color(0xFFE2E2E2),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child:
                          CustomContainerText(title: 'CAR PORT', title2: '\$0'),
                    ),
                    Divider(
                      height: 1,
                      color: Color(0xFFE2E2E2),
                    ),
                  ],
                ),
              ),
              24.verticalSpace,
              Headings(title: 'Features'),
              15.verticalSpace,
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0.1,
                  crossAxisSpacing: 4,
                  childAspectRatio: 6,
                ),
                itemCount: features.length,
                itemBuilder: (context, index) {
                  return FeaturesTile(label: features[index]);
                },
              ),
              32.verticalSpace,
              Divider(
                height: 1,
                color: Color(0xFFE2E2E2),
              ),
              32.verticalSpace,
              Headings(
                title: 'Uploaded Photos',
              ),
              23.verticalSpace,
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/floor.png',
                        height: 99.h,
                        width: 124.w,
                      ),
                      24.horizontalSpace,
                      Text(
                        'Floor Plans',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: Color(0xFF1A1B28)),
                      )
                    ],
                  ),
                  24.verticalSpace,
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/interior.png',
                        height: 99.h,
                        width: 124.w,
                      ),
                      24.horizontalSpace,
                      Text(
                        'Interior Photos',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: Color(0xFF1A1B28)),
                      )
                    ],
                  )
                ],
              ),
              24.verticalSpace,
              Divider(
                height: 1,
                color: Color(0xFFE2E2E2),
              ),
              32.verticalSpace,
              Headings(
                title: 'Location',
              ),
              15.verticalSpace,
              Text(
                '780 Bourke Street, Moore Park, 2021',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Color(0xFF494D60)),
              ),
              26.verticalSpace,
              Container(
                height: 258.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/map.png'))),
                child: Center(
                    child: Image.asset(
                  'assets/images/map2.png',
                  height: 84,
                  width: 84,
                )),
              ),
              32.verticalSpace,
              Divider(
                height: 1,
                color: Color(0xFFE2E2E2),
              ),
              32.verticalSpace,
              Headings(
                title: 'Owners',
              ),
              32.verticalSpace,
              Row(
                children: [
                  Image.asset('assets/images/Rectangle196.png'),
                  16.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jane Doe',
                        style: TextStyle(
                          color: const Color(0xFF1A1B28),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'jane.doe@example.com',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Color(0xFF494D60)),
                      ),
                      Text(
                        '0123 456 7890',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Color(0xFF494D60)),
                      )
                    ],
                  )
                ],
              ),
              16.verticalSpace,
              Text(
                'COMPANY DETAILS',
                style: TextStyle(
                  color: const Color(0xFF164C63),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              16.verticalSpace,
              Text(
                'Wills Real Estate',
                style: TextStyle(
                  color: const Color(0xFF1A1B28),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Construction Developer Company',
                style: TextStyle(
                  color: const Color(0xFF494D60),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              32.verticalSpace,
              Divider(
                height: 1,
                color: Color(0xFFE2E2E2),
              ),
              32.verticalSpace,
              Headings(title: 'Agreements',),
              16.verticalSpace,
              CommonAggrementCard(
                  title: 'Management Agreement', Subtitle: '01/15/24'),
                  8.verticalSpace,
                    CommonAggrementCard(
                  title: 'Residential Tenancy Agreement', Subtitle: '05/07/24'), 
                  8.verticalSpace,
                     CommonAggrementCard(
                  title: 'Exclusive Sales Agency', Subtitle: '01/15/24'),
                  32.verticalSpace,
            ],
          ),
        ));
  }
}

class CustomContainerText extends StatefulWidget {
  final String title;
  final String title2;
  const CustomContainerText(
      {super.key, required this.title, required this.title2});

  @override
  State<CustomContainerText> createState() => _CustomContainerTextState();
}

class _CustomContainerTextState extends State<CustomContainerText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AutoSizeText(
          softWrap: true,
          widget.title,
          style: TextStyle(
            color: const Color(0xFF494D60),
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        Expanded(
          child: AutoSizeText(
            softWrap: true,
            maxLines: 2,
            widget.title2,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: const Color(0xFF1A1B28),
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}

class FeaturesTile extends StatefulWidget {
  final String label;

  const FeaturesTile({Key? key, required this.label}) : super(key: key);

  @override
  State<FeaturesTile> createState() => _FeaturesTileState();
}

class _FeaturesTileState extends State<FeaturesTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          color: Color(0xFF494D60),
          size: 10,
        ),
        4.horizontalSpace,
        Expanded(
          child: AutoSizeText(
            widget.label,
            style: TextStyle(
              color: const Color(0xFF494D60),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

class Headings extends StatefulWidget {
  final String title;
  const Headings({super.key, required this.title});

  @override
  State<Headings> createState() => _HeadingsState();
}

class _HeadingsState extends State<Headings> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Image.asset(
          'assets/images/edit-2.png',
          color: Color(0xFF292D32),
          height: 24,
          width: 24,
        ),
      ],
    );
  }
}
