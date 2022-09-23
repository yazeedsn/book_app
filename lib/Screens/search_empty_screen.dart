import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchEmptyScreen extends StatelessWidget {
  const SearchEmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'البحث',
              style: TextStyle(color: const Color(0xFF434343), fontSize: 30.sp),
            ),
            const Expanded(child: SizedBox(height: 1)),
            Center(
              child: SizedBox(
                width: 244.w,
                height: 202.h,
                child: Image.asset('assets/images/search_empty.png'),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              '! لا يوجد نتائج ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: color2, fontSize: 21.sp, fontFamily: 'Al-Jazeera'),
            ),
            const Expanded(child: SizedBox(height: 1)),
          ],
        ),
      ),
    );
  }
}
