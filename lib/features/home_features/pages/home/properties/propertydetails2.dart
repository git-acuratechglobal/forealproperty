import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';

import 'package:foreal_property/features/home_features/pages/home/properties/propertydetails.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/addproperty.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/aggrement.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/attributes.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/ownership.dart';
import 'package:foreal_property/features/home_features/providers/get_property_detail.dart';

class Propertydetails2 extends ConsumerStatefulWidget {
  final String id ;
  const Propertydetails2(this.id, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _Propertydetails2State();
}

class _Propertydetails2State extends ConsumerState<Propertydetails2> {
  bool isContainerVisible = true;
  bool isContainerVisible2 = true;
  bool isContainerVisible3 = true;
  bool isContainerVisible4 = true;
  bool isColumnVisible = true;


  @override
  void initState() {
 
    super.initState();
WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
   ref.read(getPropertyDetailProvider.notifier).getDetail(widget.id);
    });
    
  }
  void toggleContainer() {
    setState(() {
      isContainerVisible = !isContainerVisible;
    });
  }

  void toggleContainer2() {
    setState(() {
      isContainerVisible2 = !isContainerVisible2;
    });
  }

  void toggleContainer3() {
    setState(() {
      isContainerVisible3 = !isContainerVisible3;
    });
  }

  void toggleContainer4() {
    setState(() {
      isContainerVisible4 = !isContainerVisible4;
    });
  }

  void toggleContainer5() {
    setState(() {
      isColumnVisible = !isColumnVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final propertyDetail = ref.watch(getPropertyDetailProvider);
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
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
      ),
      body: AsyncWidget(value: propertyDetail, data: (propertyData){
        return SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomInkWell(
              text: 'Property',
              onTap: toggleContainer,
            ),
            16.verticalSpace,
            if (isContainerVisible)
              PropertyDetailContainerWidget(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'PROPERTY DETAILS',
                            style: TextStyle(
                              color: const Color(0xFF164C63),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // context.navigateTo(AdressWidget(
                              //   isEdit: true,
                              // ));

                              context.navigateTo(AddProperty());
                            },
                            child: SizedBox(
                              width: 50.w,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/edit-2.png',
                                    height: 16.h,
                                    width: 16.w,
                                  ),
                                  8.horizontalSpace,
                                  Text(
                                    'Edit',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF164C63),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                        title: 'ADDRESS',
                         title2: propertyData?.getFormatedAddress?? "", 
                         
                      ),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child:
                          CustomContainerText(title: 'TYPE', title2: propertyData?.sPropertyType??''),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ATTRIBUTES',
                            style: TextStyle(
                              color: const Color(0xFF494D60),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/bed.png',
                                height: 20.h,
                                width: 20.w,
                              ),
                              8.horizontalSpace,
                              Text(
                               propertyData?.countBedrooms.toString()??'',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: const Color(0xFF1A1B28),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              8.horizontalSpace,
                              Image.asset(
                                'assets/images/bathtub.png',
                                height: 20.h,
                                width: 20.w,
                              ),
                              8.horizontalSpace,
                              Text(
                              propertyData?.countBathrooms.toString()??'',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: const Color(0xFF1A1B28),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              8.horizontalSpace,
                              Image.asset(
                                'assets/images/car.png',
                                height: 20.h,
                                width: 20.w,
                              ),
                              8.horizontalSpace,
                              Text(
                              propertyData?.countCarParking.toString()??'',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: const Color(0xFF1A1B28),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      // child: CustomContainerText(
                      //     title: 'Attributes', title2: '',),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                          title: 'ASSIGNED TO', title2: propertyData?.agentName?? ""),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(title: 'FEATURES', title2: ''),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                  ],
                ),
              ),
            24.verticalSpace,
            CustomInkWell(
              text: 'Owner',
              onTap: toggleContainer2,
              imagePath1: 'assets/images/add2.png',
            ),
            16.verticalSpace,
            if (isContainerVisible2)
              PropertyDetailContainerWidget(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'PRIMARY OWNER',
                            style: TextStyle(
                              color: const Color(0xFF164C63),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              context.navigateTo(OwnershipWidget(
                                isEdit: true,
                              ));
                            },
                            child: SizedBox(
                              width: 50.w,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/edit-2.png',
                                    height: 16.h,
                                    width: 16.w,
                                  ),
                                  8.horizontalSpace,
                                  Text(
                                    'Edit',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF164C63),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: CustomContainerText(
                        title: 'OWNER FOLIO',
                        title2: propertyData?.ownerAccountFolio??"",
                      ),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                          title: 'NAME', title2: 'Natasha Seip'),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                          title: 'EMAIL', title2: 'natasha_seip85@outlook.com'),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                          title: 'PHONE', title2: '0435533572'),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                  ],
                ),
              ),
            24.verticalSpace,
            CustomInkWell(
              imagePath1: 'assets/images/add2.png',
              text: 'Tenant',
              onTap: toggleContainer3,
            ),
            16.verticalSpace,
            if (isContainerVisible3)
              PropertyDetailContainerWidget(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'TENANT ACCOUNT FOLIO',
                            style: TextStyle(
                              color: const Color(0xFF164C63),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              context.navigateTo(AttributeWidget(
                                isEdit: true,
                              ));
                            },
                            child: SizedBox(
                              width: 50.w,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/edit-2.png',
                                    height: 16.h,
                                    width: 16.w,
                                  ),
                                  8.horizontalSpace,
                                  Text(
                                    'Edit',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF164C63),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                        title: 'TENANT ACCOUNT FOLIO',
                        title2: 'TEN0043',
                      ),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                          title: 'TENANT CHECKSUM', title2: '1004300'),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                          title: 'RENT REVIEW FREQUENCY', title2: '12'),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                          title: 'RENT INCLUDE TAX', title2: 'Yes'),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(title: 'RENT', title2: '500'),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(title: 'PERIOD', title2: '1'),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                          title: 'AGREEMENT START',
                          title2: '2025-04-01T00:00:00'),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                          title: 'AGREEMENT END', title2: '1004300'),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(title: 'ABN', title2: '-'),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(title: 'Balance', title2: '-'),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                          title: 'Bond Amount', title2: '2000'),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                          title: 'BOND IN-TRUST', title2: 'Bond In-Trust'),
                    ),
                  ],
                ),
              ),
            24.verticalSpace,
            CustomInkWell(
              imagePath1: 'assets/images/add2.png',
              text: 'Tenant Details',
              onTap: toggleContainer4,
            ),
            16.verticalSpace,
            if (isContainerVisible4)
              PropertyDetailContainerWidget(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'TENANT DETAILS',
                            style: TextStyle(
                              color: const Color(0xFF164C63),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              context.navigateTo(AttributeWidget(
                                isEdit: true,
                              ));
                            },
                            child: SizedBox(
                              width: 50.w,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/edit-2.png',
                                    height: 16.h,
                                    width: 16.w,
                                  ),
                                  8.horizontalSpace,
                                  Text(
                                    'Edit',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF164C63),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                          title: 'NAME', title2: 'Trevina Waipouri'),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                          title: 'EMAIL', title2: 'trevinabernard9@gmail.com'),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: CustomContainerText(
                          title: 'PHONE', title2: '0414619869'),
                    ),
                    Divider(height: 1, color: Color(0xFFE2E2E2)),
                  ],
                ),
              ),
            24.verticalSpace,
            CustomInkWell(
              imagePath1: 'assets/images/add2.png',
              text: 'Agreements',
              onTap: toggleContainer5,
            ),
            16.verticalSpace,
            if (isColumnVisible)
              Column(
                children: [
                  CommonAggrementCard(
                      title: 'Management Agreement', Subtitle: '01/15/24'),
                  8.verticalSpace,
                  CommonAggrementCard(
                      title: 'Residential Tenancy Agreement',
                      Subtitle: '05/07/24'),
                  8.verticalSpace,
                  CommonAggrementCard(
                      title: 'Exclusive Sales Agency', Subtitle: '01/15/24'),
                  32.verticalSpace,
                ],
              ),
            // ElevatedButton(
            //    style: ElevatedButton.styleFrom(
            //         backgroundColor:Color(0xFF164C63),
            //          foregroundColor: Colors.white,
            //         side: BorderSide(
            //           color: Color(0xFF164C63),
            //         )),
            //   onPressed: (){}, child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Image.asset('assets/images/add.png', color: Colors.white,),
            //       8.horizontalSpace,
            //       Text('Add Property Listings'),
            //     ],
            //   )),

            45.verticalSpace,
          ],
        ),
      );
      })
      // bottomNavigationBar:      SizedBox(
      //         height: 100.h,
      //         child: Bottomnavbar()),
    );
  }
}

class PropertyDetailContainerWidget extends StatefulWidget {
  final Widget child;
  const PropertyDetailContainerWidget({super.key, required this.child});

  @override
  State<PropertyDetailContainerWidget> createState() =>
      _PropertyDetailContainerWidgetState();
}

class _PropertyDetailContainerWidgetState
    extends State<PropertyDetailContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Color(0xFFEBF3F5),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: const Color(0xFFE2E2E2),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: widget.child,
    );
  }
}

class CustomInkWell extends StatelessWidget {
  final String text;
  final String? imagePath1;
  final VoidCallback onTap;

  const CustomInkWell({
    super.key,
    required this.text,
    required this.onTap,
    this.imagePath1,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Row(
          children: [
            if (imagePath1 != null)
              Image.asset(
                imagePath1 ?? "",
                height: 16.h,
                width: 16.w,
                color: Color(0xFF292D32),
              ),
            20.horizontalSpace,
            InkWell(
              onTap: onTap,
              child: Image.asset(
                'assets/images/Vector-2.png',
                height: 16.h,
                width: 16.w,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
