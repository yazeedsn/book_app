import 'package:books/Screens/cat_screen.dart';
import 'package:books/Screens/featured_screen.dart';
import 'package:books/fast_navigation.dart';
import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:books/components/cat_slide.dart';
import 'package:books/components/book_slide.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        width: 242.w,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 44.h),
              Center(
                child: SizedBox(
                  width: 118.w,
                  height: 108.h,
                  child: SvgPicture.asset('assets/images/splash.svg'),
                ),
              ),
              SizedBox(height: 40.h),
              const Divider(color: Color(0xFFC9C9C9)),
              SizedBox(height: 14.h),
              Text(
                'اسم المستخدم',
                style: TextStyle(
                  color: color2,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'sam@gmail.com',
                style: TextStyle(
                  color: const Color(0xFF141315),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(color: Color(0xFFC9C9C9)),
              SizedBox(height: 30.h),
              Row(
                children: [
                  Icon(
                    Icons.home_rounded,
                    color: color2,
                    size: 28.r,
                  ),
                  SizedBox(width: 24.w),
                  Text(
                    'الرئيسية',
                    style: TextStyle(
                      color: color2,
                      fontSize: 15.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.h),
              Row(
                children: [
                  Icon(
                    Icons.add_shopping_cart_rounded,
                    color: const Color(0xFF141315),
                    size: 28.r,
                  ),
                  SizedBox(width: 24.w),
                  Text(
                    'السلة',
                    style: TextStyle(
                      color: const Color(0xFF141315),
                      fontSize: 15.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.h),
              Row(
                children: [
                  Icon(
                    Icons.text_snippet,
                    color: const Color(0xFF141315),
                    size: 28.r,
                  ),
                  SizedBox(width: 24.w),
                  Text(
                    'طلباتي',
                    style: TextStyle(
                      color: const Color(0xFF141315),
                      fontSize: 15.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.h),
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: const Color(0xFF141315),
                    size: 28.r,
                  ),
                  SizedBox(width: 24.w),
                  Text(
                    'المفضلة',
                    style: TextStyle(
                      color: const Color(0xFF141315),
                      fontSize: 15.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.h),
              Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: const Color(0xFF141315),
                    size: 28.r,
                  ),
                  SizedBox(width: 24.w),
                  Text(
                    'الاعدادات',
                    style: TextStyle(
                      color: const Color(0xFF141315),
                      fontSize: 15.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.h),
              Row(
                children: [
                  Icon(
                    Icons.cancel_outlined,
                    color: const Color(0xFF141315),
                    size: 28.r,
                  ),
                  SizedBox(width: 24.w),
                  Text(
                    'تسجيل الخروج',
                    style: TextStyle(
                      color: const Color(0xFF141315),
                      fontSize: 15.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
