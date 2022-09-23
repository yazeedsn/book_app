import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    borderRadius: BorderRadius.circular(10.r)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 470.h,
                      child: Text(
                        'نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن  نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن  نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص  ',
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
