import 'package:books/Screens/auth/password_screen.dart';
import 'package:books/fast_navigation.dart';
import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 100.h),
            Text(
              'تسجيل الدخول',
              style: TextStyle(
                  color: const Color(0xFF323232),
                  fontSize: 30.sp,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 60.h),
            const TextField(
              decoration: InputDecoration(
                label: Text('بريد إلكتروني'),
              ),
            ),
            SizedBox(height: 24.h),
            TextField(
              decoration: InputDecoration(
                label: const Text('كلمة السر'),
                suffixIcon: Icon(
                  Icons.remove_red_eye_rounded,
                  size: 22.r,
                  color: const Color(0xFFC6CBD4),
                ),
              ),
            ),
            SizedBox(height: 50.h),
            OutlinedButton(
              onPressed: () {},
              child: Text('تسجيل الدخول', style: outlinedButtonTextStyle),
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'ليس لديك حساب؟',
                  style: TextStyle(color: Color(0xFFA3A3A3), fontSize: 14),
                ),
                SizedBox(width: 12.w),
                const Text(
                  'إنشاء حساب',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 14.h),
            TextButton(
              onPressed: () {
                navigate(context, const PasswordScreen());
              },
              style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero)),
              child: const Text(
                'نسيت كلمة المرور؟',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
