import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:books/components/book_slide.dart';
import 'package:books/styling.dart';

class FeaturedScreen extends StatelessWidget {
  const FeaturedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: Padding(
        padding: EdgeInsets.only(left: 28.w, top: 43.h, right: 28.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'الكتب المميزة',
              style:
                  pageTitleTextStyle.copyWith(color: const Color(0xFF434343)),
            ),
            SizedBox(height: 70.h),
            Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.w,
                      childAspectRatio: 2 / 3,
                      crossAxisSpacing: 18.w,
                      mainAxisSpacing: 12.h),
                  itemCount: 7,
                  itemBuilder: (BuildContext ctx, index) {
                    return const BookSlide(
                      image: AssetImage('assets/images/holms.jpeg'),
                      title: 'إينولا هولمز وقضية',
                      price: 34.00,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
