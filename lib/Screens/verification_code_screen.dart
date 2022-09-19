import 'package:books/components/code_field.dart';
import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(36.w, 60.h, 36.w, 16.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'رمز التأكيد',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Al-Jazeera',
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'من فضلك تفقد البريد الإلكتروني',
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
                'assets/images/verification_code_image.svg',
              ),
              SizedBox(height: 80.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w),
                child: const CodeField(),
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'إعادة إرسال',
                    style: TextStyle(
                      color: const Color(0xFFA2A2A2),
                      fontFamily: 'Kufi',
                      fontSize: 9.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    '0:30',
                    style: buttonTextStyle.copyWith(fontSize: 16.sp),
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              OutlinedButton(
                onPressed: () {},
                child: Text('التالي', style: outlinedButtonTextStyle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
