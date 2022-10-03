import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

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
                'عن التطبيق',
                style: TextStyle(
                  color: const Color(0xFF434343),
                  fontSize: 30.sp,
                ),
              ),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
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
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(height: 28.h),
                      SizedBox(
                        height: 120.h,
                        child: SvgPicture.asset('assets/images/splash.svg'),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        'نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن  نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن  نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا ن ',
                        style: TextStyle(
                          color: const Color(0xFF666666),
                          fontSize: 15.sp,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 60.h),
            ],
          ),
        ),
      ),
    );
  }
}
