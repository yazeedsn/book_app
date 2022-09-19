import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatScreen extends StatelessWidget {
  const CatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: Padding(
        padding: EdgeInsets.only(left: 28.w, top: 40.h, right: 28.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'التصنيفات',
              style: TextStyle(
                color: const Color(0xFF434343),
                fontSize: 30.sp,
              ),
            ),
            SizedBox(height: 70.h),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) =>
                    const CatTile(title: 'أبطال المستقبل'),
                separatorBuilder: (context, index) => SizedBox(height: 36.h),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CatTile extends StatelessWidget {
  const CatTile({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 22.w),
      constraints: BoxConstraints.expand(height: 58.h),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(22.r)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              offset: Offset(0, 3.h),
              blurRadius: 6.r,
            ),
          ]),
      child: Text(
        title,
        style: TextStyle(
          color: color2,
          fontFamily: 'Al-Jazeera',
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
