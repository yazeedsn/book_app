import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'الاعدادات',
              style: TextStyle(
                color: const Color(0xFF434343),
                fontSize: 30.sp,
              ),
            ),
            const Divider(color: Color(0xFFC9C9C9)),
            Padding(
              padding: EdgeInsets.only(top: 90.h, left: 38.w, right: 38.w),
              child: Column(
                children: [
                  SizedBox(
                    width: 295.w,
                    height: 222.h,
                    child: Image.asset(
                      'assets/images/settings.png',
                    ),
                  ),
                  SizedBox(height: 80.h),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                width: 300.w,
                height: 240.h,
                child: ListView(
                  children: [
                    Text(
                      'الملف الشخصي',
                      style: TextStyle(
                        color: const Color(0xFF707070),
                        fontSize: 15.sp,
                      ),
                    ),
                    const Divider(color: Color(0xFFD9D9D9)),
                    SizedBox(height: 6.h),
                    Text(
                      'تغيير كلمة المرور',
                      style: TextStyle(
                        color: const Color(0xFF707070),
                        fontSize: 15.sp,
                      ),
                    ),
                    const Divider(color: Color(0xFFD9D9D9)),
                    SizedBox(height: 6.h),
                    Text(
                      'حول كاف',
                      style: TextStyle(
                        color: const Color(0xFF707070),
                        fontSize: 15.sp,
                      ),
                    ),
                    const Divider(color: Color(0xFFD9D9D9)),
                    SizedBox(height: 6.h),
                    Text(
                      'اتصل بنا',
                      style: TextStyle(
                        color: const Color(0xFF707070),
                        fontSize: 15.sp,
                      ),
                    ),
                    const Divider(color: Color(0xFFD9D9D9)),
                    SizedBox(height: 6.h),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'تغيير اللغة',
                          style: TextStyle(
                            color: const Color(0xFF707070),
                            fontSize: 15.sp,
                          ),
                        ),
                        const Expanded(child: SizedBox(width: 1)),
                        Text(
                          'الانجليزية',
                          style: TextStyle(
                            color: const Color(0xFF707070),
                            fontSize: 15.sp,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          width: 1,
                          height: 25.h,
                          color: const Color(0xFF707070),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'العربية',
                          style: TextStyle(
                            color: const Color(0xFF292727),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Divider(color: Color(0xFFD9D9D9)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
