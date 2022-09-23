import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const color2 = Color(0xFF634BBF);

var noramlTextStyle = TextStyle(
  color: const Color(0xFF676767),
  fontFamily: 'Al-Jazeera',
  fontSize: 16.sp,
  fontWeight: FontWeight.normal,
);

var buttonTextStyle = TextStyle(
  color: color2,
  fontFamily: 'Al-Jazeera',
  fontSize: 13.sp,
  fontWeight: FontWeight.bold,
);

var sliderTitleTextStyle = TextStyle(
  color: color2,
  fontFamily: 'Al-Jazeera',
  fontSize: 27.sp,
  fontWeight: FontWeight.bold,
);

var outlinedButtonTextStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'Al-Jazeera',
  fontSize: 19.sp,
  fontWeight: FontWeight.normal,
);

var outlinedButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(color2),
  textStyle: MaterialStateProperty.all<TextStyle>(outlinedButtonTextStyle),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.r),
      side: const BorderSide(color: color2, width: 2),
    ),
  ),
  minimumSize: MaterialStateProperty.all<Size>(Size(64.w, 48.h)),
);
