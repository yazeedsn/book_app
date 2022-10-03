import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF6F6F6),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 12.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'اتصل بنا',
                style: TextStyle(
                  color: const Color(0xFF434343),
                  fontSize: 30.sp,
                ),
              ),
              const Divider(),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFC9C9C9).withOpacity(0.2),
                        blurRadius: 20.r,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.r)),
                child: Text(
                  'عنوان الموضوع',
                  style: TextStyle(
                    color: const Color(0xFF666666),
                    fontSize: 18.sp,
                  ),
                ),
              ),
              SizedBox(height: 35.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFC9C9C9).withOpacity(0.2),
                        blurRadius: 20.r,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.r)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 470.h,
                      child: TextField(
                        maxLines: 20,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                        style: TextStyle(
                          color: const Color(0xFF666666),
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: outlinedButtonStyle.copyWith(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            side: const BorderSide(color: color2, width: 2),
                          ),
                        ),
                      ),
                      child: Text(
                        'إرسال',
                        style: outlinedButtonTextStyle,
                      ),
                    ),
                    SizedBox(height: 16.h),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
