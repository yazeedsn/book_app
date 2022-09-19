import 'package:books/Screens/cat_screen.dart';
import 'package:books/Screens/featured_screen.dart';
import 'package:books/fast_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:books/components/cat_slide.dart';
import 'package:books/components/book_slide.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 60.h),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.09),
                      offset: Offset(0, 13.h),
                      blurRadius: 31.r)
                ]),
                child: TextField(
                  decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: const Color(0xFF818181),
                        size: 25.r,
                      )),
                ),
              ),
              SizedBox(height: 38.h),
              Row(
                children: [
                  Text('التصنيفات',
                      style: TextStyle(
                          color: const Color(0xFF434343), fontSize: 22.sp)),
                  const Expanded(child: SizedBox(width: 1)),
                  TextButton(
                    onPressed: () {
                      navigate(context, const CatScreen());
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                    ),
                    child: Text('اظهار الكل',
                        style: TextStyle(
                            color: const Color(0xFF656565), fontSize: 14.sp)),
                  ),
                ],
              ),
              SizedBox(
                height: 65.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  itemCount: 4,
                  itemBuilder: (context, index) => const CatSlide(
                    image: AssetImage('assets/images/kids.jpg'),
                    title: 'أبطال المستقبل',
                  ),
                  separatorBuilder: (context, index) => SizedBox(width: 15.w),
                ),
              ),
              SizedBox(height: 42.h),
              Row(
                children: [
                  Text('الكتب المميزة',
                      style: TextStyle(
                          color: const Color(0xFF434343), fontSize: 22.sp)),
                  const Expanded(child: SizedBox(width: 1)),
                  TextButton(
                    onPressed: () {
                      navigate(context, const FeaturedScreen());
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                    ),
                    child: Text('اظهار الكل',
                        style: TextStyle(
                            color: const Color(0xFF656565), fontSize: 14.sp)),
                  ),
                ],
              ),
              SizedBox(
                height: 235.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  itemCount: 4,
                  itemBuilder: (context, index) => SizedBox(
                    width: 150.h,
                    child: const BookSlide(
                      image: AssetImage('assets/images/holms.jpeg'),
                      title: 'إينولا هولمز وقضية',
                      price: 34.00,
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(width: 20.w),
                ),
              ),
              SizedBox(height: 18.h),
              Row(
                children: [
                  Text('الأكثر مبيعاً ',
                      style: TextStyle(
                          color: const Color(0xFF434343), fontSize: 22.sp)),
                  const Expanded(child: SizedBox(width: 1)),
                  TextButton(
                    onPressed: () {
                      navigate(context, const CatScreen());
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                    ),
                    child: Text('اظهار الكل',
                        style: TextStyle(
                            color: const Color(0xFF656565), fontSize: 14.sp)),
                  ),
                ],
              ),
              SizedBox(
                height: 235.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  itemCount: 4,
                  itemBuilder: (context, index) => SizedBox(
                    width: 150.h,
                    child: const BookSlide(
                      image: AssetImage('assets/images/holms.jpeg'),
                      title: 'إينولا هولمز وقضية',
                      price: 34.00,
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(width: 20.w),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
