import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

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
                  'تغيير كلمة المرور',
                  style: TextStyle(
                    color: const Color(0xFF434343),
                    fontSize: 30.sp,
                  ),
                ),
              ),
              const Divider(),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 42.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'كلمة المرور الحالية',
                        hintStyle: TextStyle(
                          color: const Color(0xFFA7ABBD),
                          fontSize: 16.sp,
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFC2C6DA),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 28.h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'كلمة المرور الجديدة',
                        hintStyle: TextStyle(
                          color: const Color(0xFFA7ABBD),
                          fontSize: 16.sp,
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFC2C6DA),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 28.h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'تأكيد كلمة المرور',
                        hintStyle: TextStyle(
                          color: const Color(0xFFA7ABBD),
                          fontSize: 16.sp,
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFC2C6DA),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 74.h),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'تغير',
                        style: outlinedButtonTextStyle,
                      ),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
