import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/validator/validator.dart';
import 'package:foreal_property/features/home_features/add_property_params/ownership_params.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/provider_steps/ownership_provider.dart';

class OwnershipWidget extends ConsumerStatefulWidget {
  final bool isEdit;
  const OwnershipWidget({super.key, this.isEdit = false});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OwnershipWidgetState();
}

class _OwnershipWidgetState extends ConsumerState<OwnershipWidget> {
  late List<Map<String, TextEditingController>> ownersControllers;
  final _formKey = GlobalKey<FormState>();
  late bool isEdit;
  late List<Map<String, String?>> ownerSelections;
  @override
  void initState() {
    super.initState();
    isEdit = widget.isEdit;
    final ownership = ref.read(ownershipProvider);
    ownersControllers = [
      {
        'firstName': TextEditingController(text: ownership.firstName ?? ''),
        'lastName': TextEditingController(text: ownership.lastName ?? ''),
        'phone': TextEditingController(text: ownership.phone ?? ''),
        'email': TextEditingController(text: ownership.email ?? ''),
        'address': TextEditingController(text: ownership.address ?? ''),
        'abn': TextEditingController(text: ownership.abn ?? ''),
        'companyName': TextEditingController(text: ownership.companyName ?? ''),
      },
    ];

    ownerSelections = [
      {
        'contact': ownership.contact.toString(),
        'type': ownership.type,
        'title': ownership.title,
      },
    ];
  }

  @override
  void dispose() {
    for (var owner in ownersControllers) {
      owner.forEach((key, controller) {
        controller.dispose();
      });
    }
    super.dispose();
  }

  bool isChecked = true;
  String? selectedValue;

  void addAnotherOwner() {
    setState(() {
      ownersControllers.add({
        'firstName': TextEditingController(),
        'lastName': TextEditingController(),
        'phone': TextEditingController(),
        'email': TextEditingController(),
        'address': TextEditingController(),
        'abn': TextEditingController(),
        'companyName': TextEditingController(),
      });

      ownerSelections.add({
        'contact': null,
        'type': null,
        'title': null,
      });
    });
  }

  final List<String> contactOptions = ['Agent', 'Owner'];
  final List<String> titleOptions = ['Mr.', 'Mrs.', 'Miss.'];

  @override
  Widget build(BuildContext context) {
    //  final ownershipState = ref.watch(ownershipProvider);
    final validator = ref.watch(validatorsProvider);

    return Scaffold(
        appBar: isEdit
          ? AppBar(
              title: Text('Contact Form'),
              centerTitle: true,
            )
          : null,
      body: SingleChildScrollView(
         padding: EdgeInsets.symmetric(horizontal: 24),
        child:
        
         Form(
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            16.verticalSpace,
            ...List.generate(
              ownersControllers.length,
              (index) {
                var owner = ownersControllers[index];
                var selection = ownerSelections[index];
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      16.verticalSpace,
                      Text(
                        'Contacts',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      16.verticalSpace,
                      WidgetDropdown(
                        propertyOptions: contactOptions,
                        selectedValue: contactOptions.isNotEmpty
                            ? 'select'
                            : contactOptions[index],
                        onChanged: (String? value) {
                          final int index = contactOptions.indexOf(value ?? '');

                          ref
                              .read(ownershipProvider.notifier)
                              .updateField('contact', index);

                          ref.read(ownershipParamsDataProvider.notifier).update(
                              (p) => p!.copyWith(
                                  contactType: contactOptions.indexOf(value!)));

                          print("Selected Contact: $value at index $index");
                        },
                        hintText: 'Select',
                      ),

                      16.verticalSpace,
                      Text('OWNER ${index + 1}',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF164C63))),
                      16.verticalSpace,
                      Text(
                        'Type',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      16.verticalSpace,
                      WidgetDropdown(
                        propertyOptions: ['Individual', 'Owner'],
                        selectedValue: selection['type'],
                        onChanged: (String? value) {
                          ref
                              .read(ownershipProvider.notifier)
                              .updateField('type', value);
                          print("Selected Property: $value");
                        },
                        hintText: 'Select',
                      ),
                      16.verticalSpace,
                      Text(
                        'Title',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      16.verticalSpace,
                      WidgetDropdown(
                        propertyOptions: titleOptions,
                        selectedValue: titleOptions.isNotEmpty
                            ? 'select'
                            : titleOptions[index],
                        onChanged: (String? value) {
                          ref
                              .read(ownershipProvider.notifier)
                              .updateField('title', value);

                          ref.read(ownershipParamsDataProvider.notifier).update(
                              (p) => p!.copyWith(
                                  title: titleOptions.indexOf(value!)));
                          print("Selected Property: $value");
                        },
                        hintText: 'Select',
                      ),
                      16.verticalSpace,
                      Text('First Name',
                          style: Theme.of(context).textTheme.bodyLarge),
                      16.verticalSpace,
                      CommonTextField(
                        validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
                        label: 'First Name',
                        controller: owner['firstName']!,
                        onChanged: (val) => ref
                            .read(ownershipProvider.notifier)
                            .updateField('firstName', val),
                        onSaved: (newValue) {
                          ref
                              .read(ownershipParamsDataProvider.notifier)
                              .update((p) => p!.copyWith(firstName: newValue!));
                        },
                      ),
                      16.verticalSpace,
                      Text('Last Name',
                          style: Theme.of(context).textTheme.bodyLarge),
                      16.verticalSpace,
                      CommonTextField(
                        label: 'Last Name',
                        controller: owner['lastName']!,
                        onChanged: (val) => ref
                            .read(ownershipProvider.notifier)
                            .updateField('lastName', val),
                        onSaved: (newValue) {
                          ref
                              .read(ownershipParamsDataProvider.notifier)
                              .update((p) => p!.copyWith(lastName: newValue!));
                        },
                      ),
                      16.verticalSpace,
                      Text('Phone',
                          style: Theme.of(context).textTheme.bodyLarge),
                      16.verticalSpace,
                      CommonTextField(
                        label: 'Phone number',
                        validator: validator.validateMobile,
                        controller: owner['phone']!,
                        onChanged: (val) => ref
                            .read(ownershipProvider.notifier)
                            .updateField('phone', val),
                        onSaved: (val) {
                          ref
                              .read(ownershipParamsDataProvider.notifier)
                              .update((p) => p!.copyWith(mobileNumber: val!));
                        },
                      ),
                      16.verticalSpace,
                      Text('Email',
                          style: Theme.of(context).textTheme.bodyLarge),
                      16.verticalSpace,
                      CommonTextField(
                        validator: validator.validateEmail,
                        label: 'Email address',
                        controller: owner['email']!,
                        onChanged: (val) => ref
                            .read(ownershipProvider.notifier)
                            .updateField('email', val),
                        onSaved: (newValue) {
                          ref
                              .read(ownershipParamsDataProvider.notifier)
                              .update((p) => p!.copyWith(email: newValue!));
                        },
                      ),
                      16.verticalSpace,
                      Text('Address',
                          style: Theme.of(context).textTheme.bodyLarge),
                      16.verticalSpace,
                      CommonTextField(
                        label: 'Search for address',
                        controller: owner['address']!,
                        onChanged: (val) => ref
                            .read(ownershipProvider.notifier)
                            .updateField('address', val),
                        onSaved: (newValue) {
                          ref
                              .read(ownershipParamsDataProvider.notifier)
                              .update((p) => p!.copyWith(address: newValue!));
                        },
                      ),
                      // 16.verticalSpace,
                      // Text('ABN', style: Theme.of(context).textTheme.bodyLarge),
                      // 16.verticalSpace,
                      // CommonTextField(
                      //   label: 'ABN Number',
                      //   controller: owner['abn']!,
                      //   onChanged: (val) => ref
                      //       .read(ownershipProvider.notifier)
                      //       .updateField('abn', val),
                      // ),
                      16.verticalSpace,
                      Text(
                        'Company Name',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      12.verticalSpace,
                      TextField(
                        cursorColor: Colors.black,
                        controller: owner['companyName'],
                        onChanged: (val) => ref
                            .read(ownershipProvider.notifier)
                            .updateField('companyName', val),
                        decoration: InputDecoration(
                          fillColor: Color(0xFFEBF3F5),
                          labelText: 'Company Name',
                          labelStyle:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: Color(0xFFB9B9B9),
                                  ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Color(0xFFE2E2E2))),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                            activeColor: Color(0xFF164C63),
                            value: isChecked,
                            onChanged: (newValue) {
                              setState(() {
                                isChecked = newValue!;
                              });
                            },
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isChecked = !isChecked;
                              });
                            },
                            child: Text(
                              'Set as  primary',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF1A1B28),
                              ),
                            ),
                          ),
                        ],
                      ),
                      24.verticalSpace,
                      Divider(height: 1, color: Color(0xFFE2E2E2)),
                    ],
                  ),
                );
              },
            ),
            24.verticalSpace,
            Container(
              height: 56,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: const Color(0xFF164C63)),
                  borderRadius: BorderRadius.circular(38),
                ),
              ),
              child: GestureDetector(
                onTap:
                    addAnotherOwner, // This will trigger adding another owner
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/add-circle.png',
                          height: 20.h, width: 20.w),
                      Text(
                        'Add Another Owner',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: Color(0xFF164C63)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            60.verticalSpace,
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: BottomAppBar(
          color: Colors.white,
          child: PrimaryButton(
            isLoading: ref.watch(propertyNotifierProvider).isLoading,
            title: isEdit ? 'Save' : 'Next',
            onClick: () {

       if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                ref
                    .read(propertyNotifierProvider.notifier)
                    .addPropertyContact();
              }
            },
          ),
        ),
      ),
    );
  }
}
















// class _OwnershipWidgetState extends ConsumerState<OwnershipWidget> {
//   late TextEditingController firstNameController;
//   late TextEditingController lastNameController;
//   late TextEditingController phoneController;
//   late TextEditingController emailController;
//   late TextEditingController addressController;
//   late TextEditingController abnController;
//   late TextEditingController companyNameController;

//   @override
//   void initState() {
//     super.initState();
//     final ownership = ref.read(ownershipProvider);
//     firstNameController =
//         TextEditingController(text: ownership.firstName ?? '');
//     lastNameController = TextEditingController(text: ownership.lastName ?? '');
//     phoneController = TextEditingController(text: ownership.phone ?? '');
//     emailController = TextEditingController(text: ownership.email ?? '');
//     addressController = TextEditingController(text: ownership.address ?? '');
//     abnController = TextEditingController(text: ownership.abn ?? '');
//     companyNameController =
//         TextEditingController(text: ownership.companyName ?? '');
//   }

//   @override
//   void dispose() {
//     firstNameController.dispose();
//     lastNameController.dispose();
//     phoneController.dispose();
//     emailController.dispose();
//     addressController.dispose();
//     abnController.dispose();
//     companyNameController.dispose();
//     super.dispose();
//   }

//   bool isChecked = true;
//   String? selectedValue;
//   @override
//   Widget build(BuildContext context) {
//     final ownershipState = ref.watch(ownershipProvider);
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             ListView.builder(
//               physics: NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//   itemCount: 1, // You can change this based on how many items you want to display
//   itemBuilder: (context, index) {
//     return Container(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           16.verticalSpace,
//           Text(
//             'Contacts',
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//           16.verticalSpace,
//           WidgetDropdown(
//             propertyOptions: ['Agent', 'Owner'],
//             selectedValue: ownershipState.contact,
//             onChanged: (String? value) {
//               ref
//                   .read(ownershipProvider.notifier)
//                   .updateField('contact', value);
//               print("Selected Property: $value");
//             },
//             hintText: 'Select',
//           ),
//           16.verticalSpace,
//           Text(
//             'OWNER 1',
//             style: TextStyle(
//               color: Color(0xFF164C63),
//               fontSize: 12.sp,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           16.verticalSpace,
//           Text(
//             'Type',
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//           16.verticalSpace,
//           WidgetDropdown(
//             propertyOptions: ['Individual', 'Owner'],
//             selectedValue: ownershipState.type,
//             onChanged: (String? value) {
//               ref.read(ownershipProvider.notifier).updateField('type', value);
//               print("Selected Property: $value");
//             },
//             hintText: 'Select',
//           ),
//           16.verticalSpace,
//           Text(
//             'Title',
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//           16.verticalSpace,
//           WidgetDropdown(
//             propertyOptions: ['Mr.', 'Mrs.', 'Miss.'],
//             selectedValue: ownershipState.title,
//             onChanged: (String? value) {
//               ref
//                   .read(ownershipProvider.notifier)
//                   .updateField('title', value);
//               print("Selected Property: $value");
//             },
//             hintText: 'Select',
//           ),
//           16.verticalSpace,
//           Text(
//             'First Name',
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//           16.verticalSpace,
//           CommonTextField(
//             label: 'First Name',
//             controller: firstNameController,
//             onChanged: (val) => ref
//                 .read(ownershipProvider.notifier)
//                 .updateField('firstName', val),
//           ),
//           16.verticalSpace,
//           Text(
//             'Last Name',
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//           16.verticalSpace,
//           CommonTextField(
//             label: 'Last Name',
//             controller: lastNameController,
//             onChanged: (val) => ref
//                 .read(ownershipProvider.notifier)
//                 .updateField('lastName', val),
//           ),
//           16.verticalSpace,
//           Text(
//             'Phone',
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//           16.verticalSpace,
//           CommonTextField(
//             label: 'Phone number',
//             controller: phoneController,
//             onChanged: (val) => ref
//                 .read(ownershipProvider.notifier)
//                 .updateField('phone', val),
//           ),
//           16.verticalSpace,
//           Text(
//             'Email',
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//           16.verticalSpace,
//           CommonTextField(
//             label: 'Email address',
//             controller: emailController,
//             onChanged: (val) => ref
//                 .read(ownershipProvider.notifier)
//                 .updateField('email', val),
//           ),
//           16.verticalSpace,
//           Text(
//             'Address',
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//           16.verticalSpace,
//           CommonTextField(label: 'Search for address',controller: addressController,
//             onChanged: (val) => ref
//                 .read(ownershipProvider.notifier)
//                 .updateField('address', val),),
//           16.verticalSpace,
//           Text(
//             'ABN',
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//           16.verticalSpace,
//           CommonTextField(label: 'ABN Number', controller: abnController,
//             onChanged: (val) => ref
//                 .read(ownershipProvider.notifier)
//                 .updateField('abn', val),),
//           16.verticalSpace,
//           Text(
//             'Company Name',
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//           12.verticalSpace,
//           TextField(
//             cursorColor: Colors.black,
//             controller: companyNameController,
//             onChanged: (val) => ref
//                 .read(ownershipProvider.notifier)
//                 .updateField('companyName', val),
//             decoration: InputDecoration(
//               fillColor: Color(0xFFEBF3F5),
//               labelText: 'Company Name',
//               labelStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
//                     color: Color(0xFFB9B9B9),
//                   ),
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(color: Color(0xFFE2E2E2)),
//                 borderRadius: BorderRadius.all(Radius.circular(12)),
//               ),
//               enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: BorderSide(color: Color(0xFFE2E2E2))),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Color(0xFFE2E2E2)),
//                 borderRadius: BorderRadius.all(Radius.circular(12)),
//               ),
//               errorBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.red),
//                 borderRadius: BorderRadius.all(Radius.circular(12)),
//               ),
//               focusedErrorBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.red),
//                 borderRadius: BorderRadius.all(Radius.circular(12)),
//               ),
//             ),
//           ),
//           Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Checkbox(
//                 activeColor: Color(0xFF164C63),
//                 value: isChecked,
//                 onChanged: (newValue) {
//                   setState(() {
//                     isChecked = newValue!;
//                   });
//                 },
//               ),
//               GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     isChecked = !isChecked;
//                   });
//                 },
//                 child: Text(
//                   'Set as  primary',
//                   style: TextStyle(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w400,
//                     color: Color(0xFF1A1B28),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           24.verticalSpace,
//           Divider(
//             height: 1,
//             color: Color(0xFFE2E2E2),
//           ),
//           60.verticalSpace,
//         ],
//       ),
//     );
//   },
// ),


//               Container(
//                 // width: 328.sp,
//                 height: 56,
//                 decoration: ShapeDecoration(
//                   color: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     side: BorderSide(
//                       width: 1,
//                       color: const Color(0xFF164C63),
//                     ),
//                     borderRadius: BorderRadius.circular(38),
//                   ),
//                 ),
//                 child: Center(
//                     child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       'assets/images/add-circle.png',
//                       height: 20.h,
//                       width: 20.w,
//                     ),
//                     Text(
//                       'Add Another Owner',
//                       style: Theme.of(context)
//                           .textTheme
//                           .titleLarge
//                           ?.copyWith(color: Color(0xFF164C63)),
//                     ),
//                   ],
//                 )),
//               ),
//           ],
//         ),

//       ),
//     );
//   }
// }
