import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
              'انشاء حساب',
              style: TextStyle(
                  color: const Color(0xFF323232),
                  fontSize: 30.sp,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 60.h),
            const TextField(
              decoration: InputDecoration(
                label: Text('الاسم'),
              ),
            ),
            SizedBox(height: 24.h),
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
              child: Text('اشتراك', style: outlinedButtonTextStyle),
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'لديك حساب بالفعل؟',
                  style: TextStyle(color: Color(0xFFA3A3A3), fontSize: 14),
                ),
                SizedBox(width: 12.w),
                const Text(
                  'تسجيل الدخول',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
