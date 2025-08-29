import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/utils/appsnackbar.dart';
import 'package:foreal_property/core/validator/validator.dart';
import 'package:foreal_property/features/home_features/add_property_params/add_tenant_param.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';
import 'package:foreal_property/features/home_features/add_property_state/add_property_state.dart';


class AddTenant extends ConsumerStatefulWidget {
  final int? propertyId;
  final int? userId;
  const AddTenant({super.key, this.propertyId, this.userId});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddTenantState();
}

class _AddTenantState extends ConsumerState<AddTenant> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

@override
void initState() {
  super.initState();

  WidgetsBinding.instance.addPostFrameCallback((_) {
    final propertyId = widget.propertyId;
    final userId = widget.userId;

    if (propertyId != null || userId != null) {
      ref.read(tenantParamsDataProvider.notifier).update(
        (p) => (p ?? const TenantParams(propertyId: 0)).copyWith(
          propertyId: propertyId ?? p?.propertyId ?? 0,
          userId: userId ?? p?.userId ?? 2,
        ),
      );
    }
  });

      ref.listenManual(propertyNotifierProvider, (_, next) {
      print('Provider state changed: $next');
      switch (next) {
        case AsyncData<AddPropertyState?> data when data.value != null:
          final addPropertyState = data.value;

          Utils.showSnackBar(context, addPropertyState?.response ?? "");

          if (addPropertyState?.addPropertyEvent ==
              AddPropertyEvent.addTenant) {
          

 
          }
        case AsyncError error:
          Utils.showSnackBar(context, error.error.toString());
      }
    });
}


  @override
  Widget build(BuildContext context) {
   // final data = ref.watch(tenantParamsDataProvider);
    final validator = ref.watch(validatorsProvider);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'Tenant',
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

    // ✅ Store full number with '04' in provider
    ref.read(tenantParamsDataProvider.notifier).update(
      (p) => p!.copyWith(tenantMobile: fullNumber),
    );
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
                      .read(tenantParamsDataProvider.notifier)
                      .update((p) => p!.copyWith(
                            tenantFname: value,
                          ));
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
                      .read(tenantParamsDataProvider.notifier)
                      .update((p) => p!.copyWith(tenantLname: value));
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
                      .read(tenantParamsDataProvider.notifier)
                      .update((p) => p!.copyWith(tenantEmail: value));
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
                        .addTenant();
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
