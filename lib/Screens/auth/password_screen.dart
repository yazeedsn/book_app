import 'package:books/Screens/auth/verification_code_screen.dart';
import 'package:books/fast_navigation.dart';
import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:books/valdiation.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.fromLTRB(36.w, 60.h, 36.w, 16.h),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '! نسيت كلمة المرور',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Al-Jazeera',
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'لا تقلق سنحل لك المشكلة',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Al-Jazeera',
                fontSize: 11.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 70.h),
            SvgPicture.asset(
              'assets/images/forget_password_image.svg',
            ),
            SizedBox(height: 80.h),
            const EmailForm(),
            const Expanded(child: SizedBox(height: 1)),
            Text(
              'تسجيل دخول',
              textAlign: TextAlign.center,
              style: buttonTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}

class EmailForm extends StatefulWidget {
  const EmailForm({
    Key? key,
  }) : super(key: key);

  @override
  State<EmailForm> createState() => _EmailFormState();
}

class _EmailFormState extends State<EmailForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || !value.isValidEmail()) {
                return 'Please enter a valid email.';
              }
              return null;
            },
            decoration: InputDecoration(
              isDense: true,
              label: Container(
                margin: EdgeInsets.only(left: 35.w),
                child: Text(
                  'البريد الإلكتروني',
                  style: TextStyle(
                    color: color2,
                    fontFamily: 'Al-Jazeera',
                    fontSize: 13.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(width: 2, color: color2),
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(width: 2, color: color2),
              ),
            ),
          ),
          SizedBox(height: 18.h),
          OutlinedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                navigate(context, const VerificationCodeScreen());
              }
            },
            child: Text('استرجاع كلمة المرور', style: outlinedButtonTextStyle),
          ),
        ],
      ),
    );
  }
}
