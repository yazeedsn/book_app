import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 12.h),
              child: Text(
                'الملف الشخصي',
                style:
                    pageTitleTextStyle.copyWith(color: const Color(0xFF434343)),
              ),
            ),
            const Divider(),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: const [
                  Tile(title: 'الاسم', value: 'اسم المستخدم'),
                  Tile(title: 'العنوان', value: 'قطاع غزة , فلسطين'),
                  Tile(title: 'البريد الاكتروني ', value: 'sam@gmail.com'),
                  Tile(title: 'رقم المحمول', value: '0567778458'),
                ],
              ),
            ),
            const Expanded(child: SizedBox(height: 1)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'تحديث',
                  style: outlinedButtonTextStyle,
                ),
              ),
            ),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: const Color(0xFF919191),
            fontSize: 16.sp,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: const Color(0xFF434343),
            fontSize: 16.sp,
          ),
        ),
        const Divider(color: Color(0xFFD9D9D9)),
        SizedBox(height: 6.h),
      ],
    );
  }
}
