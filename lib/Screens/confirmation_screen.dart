import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: SizedBox(height: 1)),
          SizedBox(
            width: 238.w,
            height: 238.h,
            child: SvgPicture.asset(
              'assets/images/like.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(height: 34.h),
          Text(
            'تأكيد',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF434343),
              fontSize: 30.sp,
            ),
          ),
          const Expanded(child: SizedBox(height: 1)),
          Padding(
            padding: EdgeInsets.only(left: 28.w, bottom: 26.h, right: 28.w),
            child: OutlinedButton(
              onPressed: () {},
              child:
                  Text('العودة الى الرئيسية', style: outlinedButtonTextStyle),
            ),
          ),
        ],
      ),
    );
  }
}
