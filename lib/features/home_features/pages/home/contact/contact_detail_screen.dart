import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/home_features/providers/get_contact_detail.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDetailScreen extends ConsumerStatefulWidget {
  final VoidCallback? onOpenHomesTap;
  final String id;

  const ContactDetailScreen(this.id, {super.key, this.onOpenHomesTap});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ContactDetailScreenState();
}

class _ContactDetailScreenState extends ConsumerState<ContactDetailScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(getContactDetailProvider.notifier).getContactDetail(widget.id);
    });
  }


  @override
  Widget build(BuildContext context) {
    final contactDetail = ref.watch(getContactDetailProvider);

    return Scaffold(
        backgroundColor: const Color(0xFFEBF3F5),
        body: AsyncWidget(
            value: contactDetail,
            data: (data) {
              print("Contact Data: ${data ?? 'No contact data'}");
              return Scaffold(
                  appBar: AppBar(
                    leadingWidth: 90,
                    automaticallyImplyLeading: false,
                    leading: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: InkWell(
                        onTap: () {
                          context.navPop();
                        },
                        child: Image.asset(
                          'assets/images/arrow-left.png',
                        ),
                      ),
                    ),
                    title: Text(
                      'Contact Details',
                      style: TextStyle(
                        color: const Color(0xFF1A1B28),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        Center(
                            child: Image.asset(
                          'assets/images/profile1.png',
                          height: 150.h,
                          width: 150.w,
                        )),
                        Text(
                          ' ${data?.firstName ?? ""} ${data?.lastName ?? ""}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        10.verticalSpace,
                        if ((data?.email?.isNotEmpty ?? false))
                          InkWell(
                            onTap: () async {
                              final email = data.email ?? '';
                              final Uri uri = Uri(
                                scheme: 'mailto',
                                path: email,
                                query: Uri.encodeFull(
                                  'subject=Property Inquiry&body=Hello, I\'m interested in your property.',
                                ),
                              );
                              try {
                                await launchUrl(uri);
                              } catch (e) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content:
                                          Text('Could not open email: $e')),
                                );
                              }
                            },
                            child: Text(
                              data!.email!,
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),

                        10.verticalSpace,
                        InkWell(
                          onTap: () async {
                            final phone = data?.mobileNumber ?? '';
                            if (phone.isNotEmpty) {
                              final Uri uri = Uri.parse("tel:$phone");
                              try {
                                await launchUrl(uri);
                              } catch (e) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content:
                                          Text('Could not launch dialer: $e')),
                                );
                              }
                            }
                          },
                          child: Text(
                            "${data?.mobileNumber ?? ""}",
                            style: TextStyle(
                              color: Colors.blue, // To indicate it's clickable
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),

                        // 10.verticalSpace,
                        // Text(
                        //   "${data?.address ?? ""}",
                        //   style: TextStyle(
                        //       color: Colors.black,
                        //       fontSize: 15.sp,
                        //       fontWeight: FontWeight.w600),
                        // ),
                        //  10.verticalSpace,
                        //  Center(
                        //    child: Text(
                        //     "${data?.propertyAddress ?? ""}",
                        //     style: TextStyle(
                        //         color: Colors.black,
                        //         fontSize: 15.sp,
                        //         fontWeight: FontWeight.w600),
                        //                            ),
                        //  ),
                        10.verticalSpace,
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context, 1);
                              widget.onOpenHomesTap?.call();
                            },
                            child: Text(
                              // (data!.contactNotes != null &&
                              //         data.contactNotes!.isNotEmpty)
                              //     ? data.contactNotes![0].propertyAddress ?? ""
                              //     :
                                   ""

                                      // data?.propertyOwnerFolioDetails
                                      //         .propertyAddress ??
                                      '',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ));
            }));
  }
}
