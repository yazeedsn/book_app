import 'package:books/Screens/auth/login_screen.dart';
import 'package:books/Screens/auth/signup_screen.dart';
import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Transform.scale(
                  scale: 1.5,
                  child: SvgPicture.asset(
                    'assets/images/welcome_bg.svg',
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
              const Expanded(
                flex: 2,
                child: SizedBox(height: 1),
              ),
            ],
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 38.w, right: 38.w, top: 20.h, bottom: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'أهلاً بك',
                    textAlign: TextAlign.center,
                    style: sliderTitleTextStyle.copyWith(
                        color: Colors.white, fontSize: 41.sp),
                  ),
                  Text(
                    '! هيا بنا لنبدأ',
                    textAlign: TextAlign.center,
                    style: sliderTitleTextStyle.copyWith(
                        color: Colors.white, fontSize: 11.sp),
                  ),
                  SizedBox(height: 45.h),
                  SvgPicture.asset(
                    'assets/images/welcome_image.svg',
                  ),
                  SizedBox(height: 90.h),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: Text('تسجيل الدخول', style: outlinedButtonTextStyle),
                  ),
                  SizedBox(height: 6.h),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()));
                    },
                    style: outlinedButtonStyle.copyWith(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent)),
                    child: Text('إنشاء حساب',
                        style: outlinedButtonTextStyle.copyWith(color: color2)),
                  ),
                  const Expanded(child: SizedBox(height: 1)),
                  Text(
                    'تسجيل كزائر',
                    textAlign: TextAlign.center,
                    style: buttonTextStyle,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
