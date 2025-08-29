import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllManageAgreement extends StatefulWidget {
  const AllManageAgreement({super.key});

  @override
  State<AllManageAgreement> createState() => _AllManageAgreementState();
}

class _AllManageAgreementState extends State<AllManageAgreement> {

 List<Map<String, dynamic>> items = [
    {
      'address': '780 Bourke Street, Moore Park, 2021',
      'type': 'Incompleted',
      'onPressed': (BuildContext context) {
       // context.navigateTo(ReportScreen());
      },
      'color': const Color(0xFFFAB53E),
      'text': 'Start',
      'agreement': 'Management Agreement'
    },
    {
      'address': '6391 Elgin St. Celina, Delaware 10299',
      'type': 'Completed',
      'onPressed': (BuildContext context) {
        //context.navigateTo(ReportScreen1());
      },
      'color': const Color(0xFF75CBCD),
      'text': 'Start',
      'agreement': 'Residential Tenancy Agreement'
    },
    {
      'address': '1901 Thornridge Cir. Shiloh, Hawaii 81063',
      'type': 'Incompleted',
      // 'onPressed': (BuildContext context) {
      //   context.navigateTo(ReportScreen());
      // },
      'color': const Color(0xFFFAB53E),
      'text': 'Finish',
      'agreement': 'Exclusive Sales Agency'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                final item = items[index];
                return InkWell(
                  onTap: (){
                     item['onPressed'](context);
                  },
                  child: Container(
                    padding: const EdgeInsets.only(right: 24, bottom: 24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 6),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: item['color'],
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  item['type'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                 PopupMenuButton(
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(10),
                                       side: const BorderSide(
                                         width: 1,
                                         color: Color(0xFFE2E2E2),
                                       )),
                                   itemBuilder: (context) => <PopupMenuEntry<String>>[
                                     PopupMenuItem(
                                       //  value: 1,
                                       child: const Text('View'),
                                       onTap: () {
                                           // context.navigateTo(ActivityScreen());
                                       },
                                     ),
                                     PopupMenuItem(
                                       //  value: 2,
                                       child: const Text('Delete'),
                                       onTap: () {
                                         //   context.navigateTo(PlanInspection());
                                       },
                                     ),
                                   ],
                                   child: Padding(
                                     padding: const EdgeInsets.only(top: 8.0),
                                     child: Image.asset(
                                       'assets/images/more-circle.png',
                                       height: 24.h,
                                       width: 24.w,
                                     ),
                                   ),
                                 )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 16, right: 24),
                          child: Row(
                            children: [
                              SizedBox(
                                  height: 72.h,
                                  width: 72.w,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        'assets/images/home3.png',
                                        fit: BoxFit.cover,
                                      ))),
                              10.horizontalSpace,
                              
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'House',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFF494D60),
                                      ),
                                    ),
                                    AutoSizeText(
                                      item['address'],
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        16.verticalSpace,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Agreement Type',
                                style: TextStyle(
                                  color: const Color(0xFF494D60),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                item['agreement'],
                                style: TextStyle(
                                  color: const Color(0xFF1A1B28),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        16.verticalSpace,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Created',
                                    style: TextStyle(
                                      color: const Color(0xFF494D60),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    '12/07/2025 · 11:20AM - 11:50AM',
                                    style: TextStyle(
                                      color: const Color(0xFF75CBCD),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              // SizedBox(
                              //   width: 76.w,
                              //   height: 32.h,
                              //   child: ElevatedButton(
                              //     style: ElevatedButton.styleFrom(
                              //       backgroundColor: Color(0xFF164C63),
                              //       foregroundColor: Colors.white,
                              //       shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(
                              //             8), // adjust radius if needed
                              //         // 👈 border width
                              //       ),
                              //     ),
                              //     onPressed: () {
                              //       item['onPressed'](context);
                              //     },
                              //     child: AutoSizeText(
                              //       maxLines: 1,
                              //       overflow: TextOverflow.ellipsis,
                              //       item['text'],
                                  
                              //       style: TextStyle(
                              //         fontSize: 15.sp,
                              //         fontWeight: FontWeight.w700,
                              //       ),
                              //     ),
                              //   ),
                              // )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return 16.verticalSpace;
              }, itemCount: items.length,
             // itemCount: filteredItems.length,
      ),
    );
  }
}