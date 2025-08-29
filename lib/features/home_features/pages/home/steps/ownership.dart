import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/utils/searchbutton.dart';
import 'package:foreal_property/core/validator/validator.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/home_features/add_property_params/add_multiple_owner.dart';
import 'package:foreal_property/features/home_features/add_property_params/ownership_params.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';
import 'package:foreal_property/features/home_features/models/contact_list_model.dart';
import 'package:foreal_property/features/home_features/models/get_property_details.dart';
import 'package:foreal_property/features/home_features/providers/get_contact_list.dart';
import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:google_places_flutter/model/prediction.dart';

class OwnershipWidget extends ConsumerStatefulWidget {
  final bool isEdit;
  final String id;
  final PropertyDetailModel? propertyData;
  final String? propertyUniqueId;
  final String? contactUniqueId;
  final ContactlistModel? contactlistModel;
  const OwnershipWidget(
      {this.id = "",
      super.key,
      this.isEdit = false,
      this.propertyData,
      this.contactUniqueId,
      this.contactlistModel,
      this.propertyUniqueId});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OwnershipWidgetState();
}

class _OwnershipWidgetState extends ConsumerState<OwnershipWidget> {
  late List<Map<String, TextEditingController>> ownersControllers;
  final _formKey = GlobalKey<FormState>();
  late bool isEdit = widget.isEdit;
  late List<Map<String, String?>> ownerSelections;
  final contactOptions = [
    'Owner',
    'Tenant',
    'Buyer',
    'Seller',
    'Investor',
    'Landlord',
    'Supplier',
    'Unknown'
  ];
  final contactOptions1 = ['Individual', 'Company'];

  @override
  void initState() {
    super.initState();
    isEdit = widget.isEdit;

    ownersControllers = [
      {
        'firstName': TextEditingController(),
        'lastName': TextEditingController(),
        'phone': TextEditingController(),
        'email': TextEditingController(),
        'address': TextEditingController(),
        'abn': TextEditingController(),
        'companyName': TextEditingController(),
      },
    ];

    ownerSelections = [
      {
        'contact': null,
        'type': null,
        'title': null,
      },
    ];

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      if (widget.propertyData == null) {
        print(widget.propertyData);
        ref.invalidate(ownershipParamsDataProvider);
      }

      if (widget.propertyData?.propertyUniqueId != null) {
        ref.read(ownershipParamsDataProvider.notifier).update(
              (p) => p!.copyWith(propertyUniqueId: widget.propertyUniqueId),
            );
        ref.read(multipleContactDataProvider.notifier).update(
              (p) => p.copyWith(propertyUniqueId: widget.propertyUniqueId),
            );
        ref.read(ownershipParamsDataProvider.notifier).update(
              (p) => p!.copyWith(contactUniqueId: widget.contactUniqueId),
            );
      }

      //   await ref
      //       .read(getContactDetailProvider.notifier)
      //       .getContactDetail(widget.id);
    });

    final ownershipData = ref.read(ownershipParamsDataProvider);

    if (ownershipData.address != null) {
      ownersControllers[0]['address']!.text = ownershipData.address!;
    }
  }

  void updateContactInfo(ContactList contact) {
    for (var owner in ownersControllers) {
      owner['firstName']?.text = contact.firstName ?? '';
      owner['lastName']?.text = contact.lastName ?? '';
      owner['phone']?.text = contact.phone?.startsWith('04') == true
          ? contact.phone!.substring(2).trim()
          : contact.phone?.trim() ?? '';
      owner['email']?.text = contact.email ?? '';
      owner['address']?.text = contact.address ?? '';
    }
  }

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

  @override
  void dispose() {
    for (var owner in ownersControllers) {
      owner.forEach((key, controller) {
        controller.dispose();
      });
    }
    super.dispose();
  }

  //bool _isInitialized = false;
  bool isChecked = true;
  String? selectedValue;

  final List<String> titleOptions = ['Mr.', 'Mrs.', 'Miss.'];
  final FocusNode _focusNode = FocusNode();
  TextEditingController searchController = TextEditingController();
  String searchQuery = '';
  ContactList? selectedContact;

  @override
  Widget build(BuildContext context) {
    // ref.invalidate(ownershipParamsDataProvider);
    final validator = ref.watch(validatorsProvider);
    final ownerData = ref.watch(ownershipParamsDataProvider);
    final allContacts = ref.watch(getContactListProvider);
    return Scaffold(
      appBar: isEdit
          ? AppBar(
              title: const Text('Contact Form'),
              centerTitle: true,
            )
          : null,
      body: SingleChildScrollView(
        //padding: EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      16.verticalSpace,
                      Text('Choose Contact',
                          style: Theme.of(context).textTheme.bodyLarge),
                      16.verticalSpace,
                      SizedBox(
                        height: 85,
                        width: double.infinity,
                        child: AsyncWidget(
                          value: allContacts,
                          data: (allContact) {
                            if (allContact == null || allContact.isEmpty) {
                              return const Text('No contacts found');
                            }

                            return DropdownSearchWidget<ContactList>(
                              items: allContact,
                              selectedValue: selectedContact,
                              onChanged: (val) {
                                if (val != null) {
                                  final contactUniqueId = val.contactUniqueId;

                                  // ✅ Update local selectedContact state
                                  setState(() {
                                    selectedContact = val;
                                  });

                                  updateContactInfo(val);

                                  // ✅ Update provider
                                  ref
                                      .read(
                                          ownershipParamsDataProvider.notifier)
                                      .update((p) => p!.copyWith(
                                          contactUniqueId: contactUniqueId));

                                  debugPrint(
                                      'Selected Contact Unique ID: $contactUniqueId');
                                }
                              },
                              itemAsString: (item) {
                                return item.firstName?.trim().isNotEmpty == true
                                    ? item.firstName!
                                    : 'No Name';
                              },
                              searchFilter: (item, query) {
                                final name = item.firstName ?? '';
                                return name;
                              },
                              hintText: 'Select a contact',
                            );
                          },
                        ),
                      ),

                     
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

                                12.verticalSpace,
                                Text(
                                  'Contact Type',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                16.verticalSpace,
                                WidgetDropdown(
                                  propertyOptions: contactOptions1,
                                  selectedValue: ownerData.contactType != null
                                      ? contactOptions1[
                                          ownerData.contactType! - 1]
                                      : ref
                                          .watch(ownershipParamsDataProvider)
                                          .contactType
                                          .toString(),
                                  onChanged: (String? value) {
                                    final int index =
                                        contactOptions1.indexOf(value ?? '');
                                    if (index != -1) {
                                      // ref
                                      //     .read(ownershipProvider.notifier)
                                      //     .updateField('contact', index + 1);
                                      ref
                                          .read(ownershipParamsDataProvider
                                              .notifier)
                                          .update(
                                            (p) => p!.copyWith(
                                                contactType: index + 1),
                                          );
                                      print(
                                          "Selected Contact: $value at index (API): ${index + 1}");
                                    } else {
                                      print("Value not found in contactType");
                                    }
                                  },
                                  hintText: 'Individual',
                                ),

                                16.verticalSpace,
                                Text('OWNER ${index + 1}',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xFF164C63))),
                                16.verticalSpace,
                                Text(
                                  'Contact',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                16.verticalSpace,
                                WidgetDropdown(
                                  propertyOptions: contactOptions,
                                  selectedValue: selection['type'],
                                  onChanged: (String? value) {
                                    if (value != null) {
                                      final index =
                                          contactOptions.indexOf(value);

                                      if (index != -1) {
                                        // ref
                                        //     .read(ownershipProvider.notifier)
                                        //     .updateField('type', value);
                                        ref
                                            .read(ownershipParamsDataProvider
                                                .notifier)
                                            .update(
                                              (p) => p!
                                                  .copyWith(typeIAM: index + 1),
                                            );
                                        print(
                                            "Selected Property: $value (Index: ${index + 1})");
                                      }
                                    }
                                  },
                                  hintText: 'Owner',
                                ),

                                // WidgetDropdown(
                                //   propertyOptions: ['Individual', 'Owner', 'Supplier', 'Tenant'],
                                //   selectedValue: selection['type'],
                                //   onChanged: (String? value) {
                                //     ref
                                //         .read(ownershipProvider.notifier)
                                //         .updateField('type', value);
                                //     print("Selected Property: $value");

                                //         ref.read(ownershipParamsDataProvider.notifier).update(
                                //         (p) => p!.copyWith(
                                //             contactType: contactOptions.indexOf(value!)));
                                //   },
                                //   hintText: 'Select',
                                // ),
                                16.verticalSpace,
                                Text(
                                  'Title',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                16.verticalSpace,
                                WidgetDropdown(
                                  propertyOptions: titleOptions,
                                  selectedValue: ownerData.title != null
                                      ? titleOptions[ownerData.title!]
                                      : ref
                                          .watch(ownershipParamsDataProvider)
                                          .title
                                          .toString(),
                                  onChanged: (String? value) {
                                    // ref
                                    //     .read(ownershipProvider.notifier)
                                    //     .updateField('title', value);

                                    ref
                                        .read(ownershipParamsDataProvider
                                            .notifier)
                                        .update((p) => p!.copyWith(
                                            title:
                                                titleOptions.indexOf(value!)));
                                  },
                                  hintText: 'Select',
                                ),
                                16.verticalSpace,
                                Text('First Name',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge),
                                16.verticalSpace,
                                CommonTextField(
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return 'This field is required';
                                    }
                                    return null;
                                  },
                                  initialValue: index == 0 &&
                                          ownerData.firstName != null &&
                                          ownerData.firstName!.isNotEmpty
                                      ? ownerData.firstName
                                      : null,
                                  label: 'First Name',
                                  controller: owner['firstName']!,
                                  // onChanged: (val) => ref
                                  //     .read(ownershipProvider.notifier)
                                  //     .updateField('firstName', val),
                                  onSaved: (newValue) {
                                    ref
                                        .read(ownershipParamsDataProvider
                                            .notifier)
                                        .update((p) =>
                                            p!.copyWith(firstName: newValue!));
                                  },
                                ),
                                16.verticalSpace,
                                Text('Last Name',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge),
                                16.verticalSpace,
                                CommonTextField(
                                  label: 'Last Name',
                                  initialValue: index == 0 &&
                                          ownerData.lastName != null &&
                                          ownerData.lastName!.isNotEmpty
                                      ? ownerData.lastName
                                      : null,
                                  controller: owner['lastName']!,
                                  // onChanged: (val) => ref
                                  //     .read(ownershipProvider.notifier)
                                  //     .updateField('lastName', val),
                                  onSaved: (newValue) {
                                    ref
                                        .read(ownershipParamsDataProvider
                                            .notifier)
                                        .update((p) =>
                                            p!.copyWith(lastName: newValue!));
                                  },
                                ),
                                16.verticalSpace,
                                Text('Phone',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge),
                                16.verticalSpace,
                                CommonTextField(
                                  initialValue: index == 0 &&
                                          ownerData.mobileNumber != null &&
                                          ownerData.mobileNumber!.isNotEmpty
                                      ? ownerData.mobileNumber!.startsWith('04')
                                          ? ownerData.mobileNumber!
                                              .substring(2) // remove '04'
                                          : ownerData.mobileNumber
                                      : null,

                                  label: 'Phone number',
                                  controller: owner['phone']!,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(
                                        8), // only 8 digits allowed
                                  ],
                                  validator: validator.validateMobile,
                                  prefixText:
                                      '04', // shown visually but not typed
                                  onSaved: (val) {
                                    final fullMobile =
                                        '04${val ?? ''}'; // attach 04 before saving
                                    ref
                                        .read(ownershipParamsDataProvider
                                            .notifier)
                                        .update(
                                          (p) => p!.copyWith(
                                              mobileNumber: fullMobile),
                                        );
                                  },
                                ),

                                16.verticalSpace,
                                Text('Email',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge),
                                16.verticalSpace,
                                CommonTextField(
                                  validator: validator.validateEmail,
                                  label: 'Email address',
                                  initialValue: index == 0 &&
                                          ownerData.email != null &&
                                          ownerData.email!.isNotEmpty
                                      ? ownerData.email
                                      : null,
                                  controller: owner['email']!,
                                  // onChanged: (val) => ref
                                  //     .read(ownershipProvider.notifier)
                                  //     .updateField('email', val),
                                  onSaved: (newValue) {
                                    ref
                                        .read(ownershipParamsDataProvider
                                            .notifier)
                                        .update((p) =>
                                            p!.copyWith(email: newValue!));
                                  },
                                ),
                                16.verticalSpace,
                                Text('Address',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge),
                                16.verticalSpace,

                                GooglePlaceAutoCompleteTextField(
                                  focusNode: _focusNode,
                                  inputDecoration: InputDecoration(
                                    hintText: 'address',
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          color: const Color(0xFFB9B9B9),
                                        ),
                                    border: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFE2E2E2)),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: const BorderSide(
                                          color: Color(0xFFE2E2E2)),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFE2E2E2)),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    errorBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    focusedErrorBorder:
                                        const OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                  ),
                                  textEditingController: owner['address']!,
                                  isLatLngRequired: true,
                                  countries: const ["au"],
                                  debounceTime: 600,
                                  googleAPIKey:
                                      'AIzaSyBNA6taSRhBuugfKk7MyQQdCVfcz2fJ4tI',
                                  itemClick: (Prediction prediction) {
                                    owner['address']!.text =
                                        prediction.description!;
                                    _focusNode.unfocus();

                                    ref
                                        .read(ownershipParamsDataProvider
                                            .notifier)
                                        .update(
                                          (p) => p!.copyWith(
                                              address: prediction.description!),
                                        );
                                  },
                                ),
                                // CommonTextField(
                                //   label: 'Search for address',
                                //   controller: owner['address']!,
                                //   onChanged: (val) => ref
                                //       .read(ownershipProvider.notifier)
                                //       .updateField('address', val),
                                //   onSaved: (newValue) {
                                //     ref
                                //         .read(ownershipParamsDataProvider.notifier)
                                //         .update((p) => p!.copyWith(address: newValue!));
                                //   },
                                // ),
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
                                  onChanged: (val) {
                                    // ref
                                    //     .read(ownershipProvider.notifier)
                                    //     .updateField('companyName', val);

                                    //ref.read(ownershipParamsDataProvider.notifier).update((p) => p!.copyWith(c));
                                  },
                                  decoration: InputDecoration(
                                    fillColor: const Color(0xFFEBF3F5),
                                    labelText: 'Company Name',
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          color: const Color(0xFFB9B9B9),
                                        ),
                                    border: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFE2E2E2)),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: const BorderSide(
                                            color: Color(0xFFE2E2E2))),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFE2E2E2)),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    errorBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    focusedErrorBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      activeColor: const Color(0xFF164C63),
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
                                          color: const Color(0xFF1A1B28),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                24.verticalSpace,
                                const Divider(height: 1, color: Color(0xFFE2E2E2)),
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
                            side: const BorderSide(
                                width: 1, color: Color(0xFF164C63)),
                            borderRadius: BorderRadius.circular(38),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: addAnotherOwner,
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
                                      ?.copyWith(color: const Color(0xFF164C63)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      30.verticalSpace,
                    ]),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: const Offset(0, -3),
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

                          final contactUniqueId = ref
                              .read(ownershipParamsDataProvider)
                              .contactUniqueId;

                          if (contactUniqueId != null &&
                              contactUniqueId.trim().isNotEmpty) {
                            ref
                                .read(propertyNotifierProvider.notifier)
                                .updateContact();
                          } else {
                            if (ownersControllers.length > 1) {
                              /// Multiple owners — second UI section rendered
                              ref
                                  .read(propertyNotifierProvider.notifier)
                                  .addMultipleOwners();
                            } else {
                              /// Only one owner
                              ref
                                  .read(propertyNotifierProvider.notifier)
                                  .addPropertyContact();
                            }
                          }
                        }
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   padding: EdgeInsets.only(top: 10),
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.black.withOpacity(0.1),
      //         blurRadius: 10,
      //         spreadRadius: 2,
      //         offset: Offset(0, -3),
      //       ),
      //     ],
      //   ),
      //   child: BottomAppBar(
      //     color: Colors.white,
      //     child: PrimaryButton(
      //       isLoading: ref.watch(propertyNotifierProvider).isLoading,
      //       title: isEdit ? 'Save' : 'Next',
      //       onClick: () {
      //         if (_formKey.currentState!.validate()) {
      //           _formKey.currentState!.save();
      //           ref
      //               .read(propertyNotifierProvider.notifier)
      //               .addPropertyContact();
      //         }
      //       },
      //     ),
      //   ),
    );
  }
}
