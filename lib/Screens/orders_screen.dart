import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

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
                'طلباتي',
                style:
                    pageTitleTextStyle.copyWith(color: const Color(0xFF434343)),
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.only(bottom: 40.h),
                clipBehavior: Clip.hardEdge,
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.only(
                      left: 20.w, right: 20.w, top: 20.h, bottom: 14.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '12 رقم الطلب #',
                            style: TextStyle(
                              color: const Color(0xFF9A16E6),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Expanded(child: SizedBox(width: 1)),
                          Text(
                            '19-23-35-2021-04-23',
                            style: TextStyle(
                              color: const Color(0xFF9A16E6),
                              fontSize: 15.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 36.h),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 6.h),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFF707070)),
                          borderRadius: BorderRadius.circular(19.r),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15.r),
                              margin: EdgeInsets.only(bottom: 10.h),
                              decoration: BoxDecoration(
                                color: const Color(0x40B4B4B4),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    '0 : عدد الكتب',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Expanded(child: SizedBox(width: 1)),
                                  const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Color(0xFF9A16E6),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              'NIS 80 : الاجمالي',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => Container(
                    width: double.maxFinite,
                    height: 15.h,
                    color: const Color(0x40B4B4B4)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
