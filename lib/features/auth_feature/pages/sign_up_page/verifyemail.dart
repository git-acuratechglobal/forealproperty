import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';


class Verifyemail extends ConsumerStatefulWidget {
  const Verifyemail({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _VerifyemailState();
}

class _VerifyemailState extends ConsumerState<Verifyemail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFFFFFFF),
            Color(0xFFEBF3F5),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              60.verticalSpace,
              InkWell(
                onTap: (){
                  context.pop();
                },
                child: Image.asset(
                  'assets/images/arrow-left.png',
                  height: 24.h,
                  width: 24.w,
                ),
              ),
              32.verticalSpace,
              Text(
                'Verify email \naddress',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: const Color(0xFF1A1B28),
                    ),
              ),
              16.verticalSpace,
              Text(
                'Please enter OTP sent to your registered email address (abc@example.com) to complete your verification.',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: const Color(0xFF494D60)),
              ),
              32.verticalSpace,
              const Form(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Otpverify(),
                  Otpverify(),
                  Otpverify(),
                  Otpverify(),
                  Otpverify(),
                  Otpverify()
                ],
              )),
              32.verticalSpace,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF164C63),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                 // context.navigateTo(Forgetpassword());
                },
                child: Text(
                  'Verify',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white),
                ),
              ),
              16.verticalSpace,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    // foregroundColor: Color(0xFF164C63),
                    side: const BorderSide(
                      color: Color(0xFF164C63),
                    )),
                onPressed: () {
                //  context.navigateTo(Verifyemail());
                },
                child: Text(
                  'Resend code',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: const Color(0xFF164C63),
                      ),
                ),
              ),
              24.verticalSpace,
              const Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Remaining time:',
                        style: TextStyle(
                          color: Color(0xFF494D60),
                          fontSize: 14,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w300,
                          height: 1.40,
                        ),
                      ),
                      TextSpan(
                        text: ' 00:59s',
                        style: TextStyle(
                          color: Color(0xFF164C63),
                          fontSize: 14,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w700,
                          height: 1.40,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Otpverify extends StatefulWidget {
  const Otpverify({super.key});

  @override
  State<Otpverify> createState() => _OtpverifyState();
}

class _OtpverifyState extends State<Otpverify> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 56.h,
            width: 46.w,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              style: TextStyle(
                color: const Color(0xFF1A1B28),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: const InputDecoration(
                hintText: '0',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                  borderRadius: BorderRadius.all(Radius.circular(38)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                  borderRadius: BorderRadius.all(Radius.circular(38)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF75CBCD)),
                  borderRadius: BorderRadius.all(Radius.circular(38)),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(38)),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(38)),
                ),
              ),
            ))
      ],
    );
  }
}
