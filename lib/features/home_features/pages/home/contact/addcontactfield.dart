import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/utils/appsnackbar.dart';
import 'package:foreal_property/core/validator/validator.dart';
import 'package:foreal_property/features/home_features/add_property_params/ownership_params.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';
import 'package:foreal_property/features/home_features/add_property_state/add_property_state.dart';
import 'package:foreal_property/features/home_features/models/contact_list_model.dart';
import 'package:google_places_flutter/google_places_flutter.dart';

class AddContactField extends ConsumerStatefulWidget {
  //final ContactDetailModel? contact;
 final ContactList? contact; 
  const AddContactField({super.key, this.contact});

  @override
  ConsumerState<AddContactField> createState() => _AddContactFieldState();
}

class _AddContactFieldState extends ConsumerState<AddContactField> {
  final _formKey = GlobalKey<FormState>();
  final FocusNode _focusNode = FocusNode();

  late final TextEditingController _firstnameController;
    late final TextEditingController _lastnameController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneController;
  final TextEditingController _addressController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _firstnameController =
        TextEditingController(text: widget.contact?.firstName);
         _lastnameController =
        TextEditingController(text: widget.contact?.lastName);
    _emailController = TextEditingController(text: widget.contact?.email);

    // ✅ Remove '04' prefix from mobileNumber if it exists
    final rawPhone = widget.contact?.mobileNumber;
    final formattedPhone = (rawPhone?.startsWith('04') ?? false)
        ? rawPhone!.substring(2)
        : rawPhone ?? '';
    _phoneController = TextEditingController(text: formattedPhone);

    final address = widget.contact?.address;
    final fallbackAddress = widget.contact?.address;
    _addressController.text =
        address?.isNotEmpty == true ? address! : (fallbackAddress ?? '');

    ref.listenManual(propertyNotifierProvider, (_, next) {
      switch (next) {
        case AsyncData<AddPropertyState?> data when data.value != null:
          final addPropertyState = data.value;
          Utils.showSnackBar(context, addPropertyState?.response ?? "");

          if (addPropertyState?.addPropertyEvent ==
              AddPropertyEvent.addContact) {
            Future.microtask(() {
              if (context.mounted) Navigator.of(context).pop(); // 🔑
            });
          }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final validator = ref.watch(validatorsProvider);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          widget.contact != null ? 'Edit Contact' : 'Edit Contact',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFFEBF3F5),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Row(
              //   children: [
              //     const Spacer(),
              //     Text(
              //       widget.contact != null ? 'Edit Contact' : 'Add Contact',
              //       style: TextStyle(
              //         color: const Color(0xFF1A1B28),
              //         fontSize: 20.sp,
              //         fontWeight: FontWeight.w700,
              //       ),
              //     ),
              //     const Spacer(),
              //     InkWell(
              //       onTap: () => context.pop(),
              //       child: Image.asset(
              //         'assets/images/exit.png',
              //         height: 15.h,
              //         width: 15.w,
              //       ),
              //     )
              //   ],
              // ),
              16.verticalSpace,
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('First Name',
                        style: Theme.of(context).textTheme.bodyLarge),
                    12.verticalSpace,
                    CommonTextField(
                      controller: _firstnameController,
                      validator: (value) =>
                          value == null || value.trim().isEmpty
                              ? 'This field is required'
                              : null,
                      label: 'First Name',
                      onSaved: (newValue) {
                        ref
                            .read(ownershipParamsDataProvider.notifier)
                            .update((p) => p!.copyWith(firstName: newValue!));
                      },
                    ),
                    16.verticalSpace,
                        Text('Last Name',
                        style: Theme.of(context).textTheme.bodyLarge),
                    12.verticalSpace,
                    CommonTextField(
                      controller: _lastnameController,
                      validator: (value) =>
                          value == null || value.trim().isEmpty
                              ? 'This field is required'
                              : null,
                      label: 'last Name',
                      onSaved: (newValue) {
                        ref
                            .read(ownershipParamsDataProvider.notifier)
                            .update((p) => p!.copyWith(lastName: newValue!));
                      },
                    ),
                    16.verticalSpace,
                    Text('Email', style: Theme.of(context).textTheme.bodyLarge),
                    12.verticalSpace,
                    CommonTextField(
                      controller: _emailController,
                      // validator: validator.validateEmail,
                      label: 'Email address',
                      onSaved: (newValue) {
                        ref
                            .read(ownershipParamsDataProvider.notifier)
                            .update((p) => p!.copyWith(email: newValue!));
                      },
                    ),
                    16.verticalSpace,
                    Text('Phone', style: Theme.of(context).textTheme.bodyLarge),
                    12.verticalSpace,
                    CommonTextField(
                      controller: _phoneController,
                      validator: validator.validateMobile,
                      label: 'Phone number',
                      prefixText: '04',
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(8),
                      ],
                      onSaved: (val) {
                        final fullNumber = '04${val ?? ''}';
                        ref.read(ownershipParamsDataProvider.notifier).update(
                            (p) => p!.copyWith(mobileNumber: fullNumber));
                      },
                    ),
                    16.verticalSpace,
                    Text('Address',
                        style: Theme.of(context).textTheme.bodyLarge),
                    12.verticalSpace,
                    GooglePlaceAutoCompleteTextField(
                      focusNode: _focusNode,
                      textEditingController: _addressController,
                      inputDecoration: InputDecoration(
                        hintText: 'Address',
                        hintStyle:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: const Color(0xFFB9B9B9),
                                ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              const BorderSide(color: Color(0xFFE2E2E2)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                      isLatLngRequired: true,
                      countries: const ["au"],
                      debounceTime: 600,
                      googleAPIKey: 'YOUR_GOOGLE_API_KEY',
                      itemClick: (prediction) {
                        _addressController.text = prediction.description!;
                        _focusNode.unfocus();

                        ref.read(ownershipParamsDataProvider.notifier).update(
                              (p) =>
                                  p!.copyWith(address: prediction.description!),
                            );
                      },
                    ),
                    24.verticalSpace,
                    PrimaryButton(
                        isLoading:
                            ref.watch(propertyNotifierProvider).isLoading,
                        title: widget.contact != null
                            ? 'Update Contact'
                            : 'Add Contact',
                        onClick: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();

                            final existing = widget.contact;

                            final updatedContact = OwnershipParams(
                             // contactType: existing?.contactType,
                             // title: existing?.title,
                              contactUniqueId: existing?.contactUniqueId,
                              // propertyUniqueId:
                              //     (existing?.contactNotes?.isNotEmpty ?? false)
                              //         ? existing!
                              //             .contactNotes!.first.propertyUniqueId
                              //         : null,
                              firstName: _firstnameController.text.trim(),
                              lastName: _lastnameController.text.trim(),
                              //lastName: existing?.lastName,
                              email: _emailController.text.trim(),
                              mobileNumber: '04${_phoneController.text.trim()}',
                              address: _addressController.text.trim(),
                            );

                            ref
                                .read(ownershipParamsDataProvider.notifier)
                                .update((_) => updatedContact);

                            ref
                                .read(propertyNotifierProvider.notifier)
                                .addPropertyContact();
                            Future.delayed(const Duration(seconds: 2), () {
                              if (context.mounted) {
                                Navigator.of(context)
                                    .pop(); // or rootNavigator: true if needed
                              }
                            });
                          }
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
