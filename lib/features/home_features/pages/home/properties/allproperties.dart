import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';

import 'package:foreal_property/features/home_features/pages/home/properties/propertydetails.dart';

class Allproperties extends ConsumerStatefulWidget {
  const Allproperties({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AllpropertiesState();
}

class _AllpropertiesState extends ConsumerState<Allproperties> {
  final List<Map<String, dynamic>> allproperties = [
    {
      'image': 'assets/images/properties.png',
      'amount': '\$973,000',
      'location': '780 Bourke Street, Moore Park, 2021',
      'residental': 'Residential House',
      'isSold': true
    },
    {
      'image': 'assets/images/properties2.png',
      'amount': '\$345,000',
      'location': '123 Main Street, Sydney, 2000',
      'residental': 'Apartment',
      'isSold': false
    },
    {
      'image': 'assets/images/properties.png',
      'amount': '\$450,000',
      'location': '456 Elm Street, Melbourne, 3000',
      'residental': 'Commercial Office',
      'isSold': true
    },
    {
      'image': 'assets/images/properties2.png',
      'amount': '\$1,200,000',
      'location': '789 Pine Avenue, Brisbane, 4000',
      'residental': 'Luxury Villa',
      'isSold': false
    },
    {
      'image': 'assets/images/properties.png',
      'amount': '\$750,000',
      'location': '101 Cedar Road, Perth, 6000',
      'residental': 'Townhouse',
      'isSold': true
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBF3F5),
      body: Padding(
        padding: EdgeInsets.only(bottom: 60),
        child: ListView.builder(
          itemCount: allproperties.length,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemBuilder: (_, index) {
            final items = allproperties[index];

            return Allproperty(
              image: items['image'],
              amount: items['amount'],
              location: items['location'],
              residential: items['residental'],
              isSold: items['isSold'] ?? false,
            );
          },
        ),
      ),
    );
  }
}

class Allproperty extends StatefulWidget {
  final String image;
  final String amount;
  final String location;
  final String residential;
  final bool isSold;

  const Allproperty(
      {super.key,
      required this.amount,
      required this.location,
      required this.residential,
      this.isSold = false,
      required this.image});

  @override
  State<Allproperty> createState() => _AllpropertyState();
}

class _AllpropertyState extends State<Allproperty> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Stack(
        children: [Container(
            padding: EdgeInsets.only(bottom: 16),
        
            ///  height: 328.h,
            decoration: ShapeDecoration(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            //  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
            
                    InkWell(
                      onTap: () {
                        context.navigateTo(PropertyDetails());
                      },
                      child: Image.asset(widget.image),
                    ),
        
                    if (widget.isSold)
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
                 
                  ],
                ),
                
                16.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Text(
                    widget.amount,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Color(0xFF1A1B28),
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/location-3.png',
                        height: 16.h,
                        width: 16.w,
                      ),
                      2.horizontalSpace,
                      Expanded(
                        child: AutoSizeText(
                          widget.location,
                          style: TextStyle(
                            color: Color(0xFF1A1B28),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                4.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    widget.residential,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Color(0xFF1A1B28),
                        ),
                  ),
                ),
                18.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
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
                      28.horizontalSpace,
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
                      28.horizontalSpace,
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
                    ],
                  ),
                )
              ],
            )),
                   Positioned(
                    bottom: 175, 
                    right: 16, 
                    child: Image.asset(
                      'assets/images/document2.png',
                      height: 40,
                      width: 40,
                    ),
                                     ),
      ]),
    );
  }
}
