import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/current.dart';

class CurrentRegistration extends ConsumerStatefulWidget {
  const CurrentRegistration({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CurrentRegistrationState();
}

class _CurrentRegistrationState extends ConsumerState<CurrentRegistration> {
  DateTime _currentDate = DateTime.now();
  TextEditingController _dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
 
    _dateController.text = '';
  }

  @override
  Widget build(BuildContext context) {
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
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.verticalSpace,
            CurrentContainer(),
            24.verticalSpace,
            Text(
              'Phone',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            12.verticalSpace,
            CommonTextField(label: 'Phone'),
            16.verticalSpace,
            Text(
              'First Name',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            12.verticalSpace,
            CommonTextField(label: 'First Name'),
            16.verticalSpace,
            Text(
              'Last Name',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            12.verticalSpace,
            CommonTextField(label: 'Last Name'),
            16.verticalSpace,
            16.verticalSpace,
            Text(
              'Email Address',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            12.verticalSpace,
            CommonTextField(label: 'Email Address'),
            16.verticalSpace,
            Text(
              'Date',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            12.verticalSpace,
            TextField(
              cursorColor: Colors.black,
              controller: _dateController,
              decoration: InputDecoration(
                hintText: 'YYYY-MM-DD',
                hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
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
              onTap: () {
                // Set the text field to show the current date when tapped
                _dateController.text =
                    '${_currentDate.year}-${_currentDate.month.toString().padLeft(2, '0')}-${_currentDate.day.toString().padLeft(2, '0')}';
              },
            ),
            32.verticalSpace,
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  // foregroundColor: Color(0xFF164C63),
                  side: BorderSide(
                    color: Color(0xFF164C63),
                  )),
              onPressed: () {
                // context.navigateTo(Verifyemail());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/add2.png',
                    height: 16.h,
                    width: 16.w,
                  ),
                  13.horizontalSpace,
                  Text(
                    'Add More',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Color(0xFF164C63),
                        ),
                  ),
                ],
              ),
            ),
            24.verticalSpace,
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF164C63),
                  foregroundColor: Color(0xFF164C63),
                  side: BorderSide(
                    color: Color(0xFF164C63),
                  )),
              onPressed: () {
                // context.navigateTo(Verifyemail());
              },
              child: Text(
                'Finish',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
            32.verticalSpace,
          ],
        ),
      ),
    );
  }
}
