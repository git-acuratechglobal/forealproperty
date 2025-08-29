import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/utils/appbutton.dart' show PrimaryButton;
import 'package:foreal_property/core/validator/validator.dart';
import 'package:foreal_property/features/home_features/add_property_params/registration_param.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';
import 'package:foreal_property/features/home_features/add_property_state/add_property_state.dart';

class CurrentRegistration extends ConsumerStatefulWidget {
  final String? openHomeUniqueId;
  const CurrentRegistration({super.key, this.openHomeUniqueId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CurrentRegistrationState();
}

class _CurrentRegistrationState extends ConsumerState<CurrentRegistration> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  late final String? _openHomeId;

  @override
  void initState() {
    super.initState();
    _openHomeId = widget.openHomeUniqueId;

    /// 🔁 Register state listener first
    ref.listenManual(propertyNotifierProvider, (_, next) {
      if (!mounted) return;

      if (next is AsyncData<AddPropertyState?>) {
        final addPropertyState = next.value;

        if (addPropertyState?.addPropertyEvent ==
            AddPropertyEvent.addOpenHomesRegistration) {
          _showCupertinoSuccessDialog(
            context,
            addPropertyState?.response ?? 'Registration successful!',
          );

          // _formKey.currentState?.reset();
          // _phoneController.clear();
          // _firstNameController.clear();
          // _lastNameController.clear();
          // _emailController.clear();
          // _dateController.clear();

          // _scrollController.animateTo(
          //   0,
          //   duration: const Duration(milliseconds: 300),
          //   curve: Curves.easeOut,
          // );

          // ref.read(registrationParamDataProvider.notifier).update(
          //       (p) => p.copyWith(
          //         phone: null,
          //         firstName: null,
          //         lastName: null,
          //         email: null,
          //         openHomeUniqueId: _openHomeId,
          //       ),
          //     );
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(registrationParamDataProvider.notifier).update(
            (p) => p.copyWith(openHomeUniqueId: _openHomeId),
          );
    });

    _dateController.text = '';
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _dateController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _showCupertinoSuccessDialog(
    BuildContext context, String message) async {
  await showCupertinoDialog(
    context: context,
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        // title: const Text(
        //   'Success',
        //   style: TextStyle(fontWeight: FontWeight.bold),
        // ),
        content: const Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: Text(
            'Do you want to do more registration?',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
        actions: [
          CupertinoDialogAction(
            child: const Text(
              'Yes',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              _formKey.currentState?.reset();

              _phoneController.clear();
              _firstNameController.clear();
              _lastNameController.clear();
              _emailController.clear();
              _dateController.clear();

              _scrollController.animateTo(
                0,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
              );

              ref.read(registrationParamDataProvider.notifier).update(
                    (p) => p.copyWith(
                      phone: null,
                      firstName: null,
                      lastName: null,
                      email: null,
                      openHomeUniqueId: _openHomeId,
                    ),
                  );

              Navigator.of(context).pop();
            },
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            child: const Text('No'),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).maybePop();
            },
          ),
        ],
      );
    },
  );
}


  @override
  Widget build(BuildContext context) {
    final validator = ref.watch(validatorsProvider);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'Registration',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFFEBF3F5),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              16.verticalSpace,
              24.verticalSpace,
              Text('Phone', style: Theme.of(context).textTheme.bodyLarge),
              12.verticalSpace,
              CommonTextField(
                label: 'Phone',
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(8),
                ],
                controller: _phoneController,
                validator: validator.validateMobile,
                prefixText: '04',
                initialValue: _phoneController.text.startsWith('04')
                    ? _phoneController.text.substring(2)
                    : _phoneController.text,
                onChanged: (value) {
                  final fullNumber = '04$value';
                  ref
                      .read(registrationParamDataProvider.notifier)
                      .update((p) => p.copyWith(phone: fullNumber));
                },
              ),
              16.verticalSpace,
              Text('First Name', style: Theme.of(context).textTheme.bodyLarge),
              12.verticalSpace,
              CommonTextField(
                controller: _firstNameController,
                label: 'First Name',
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
                onChanged: (value) {
                  ref
                      .read(registrationParamDataProvider.notifier)
                      .update((p) => p.copyWith(firstName: value));
                },
              ),
              16.verticalSpace,
              Text('Last Name', style: Theme.of(context).textTheme.bodyLarge),
              12.verticalSpace,
              CommonTextField(
                controller: _lastNameController,
                label: 'Last Name',
                onChanged: (value) {
                  ref
                      .read(registrationParamDataProvider.notifier)
                      .update((p) => p.copyWith(lastName: value));
                },
              ),
              16.verticalSpace,
              Text('Email Address',
                  style: Theme.of(context).textTheme.bodyLarge),
              12.verticalSpace,
              CommonTextField(
                controller: _emailController,
                label: 'Email Address',
                //  validator: validator.validateEmail,
                onChanged: (value) {
                  ref
                      .read(registrationParamDataProvider.notifier)
                      .update((p) => p.copyWith(email: value));
                },
              ),
              24.verticalSpace,
              PrimaryButton(
                isLoading: ref.watch(propertyNotifierProvider).isLoading,
                title: 'Next',
                onClick: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    ref
                        .read(propertyNotifierProvider.notifier)
                        .addOpenHomeRegistration();
                  }
                },
              ),
              32.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
