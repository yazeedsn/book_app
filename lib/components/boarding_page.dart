import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:books/styling.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoardingPage extends StatelessWidget {
  const BoardingPage({
    Key? key,
    required this.title,
    required this.description,
    required this.svgPicturePath,
  }) : super(key: key);

  final String title;
  final String description;
  final String svgPicturePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 22.w, right: 22.w),
          child: SizedBox(
            height: 560.h,
            child: Center(
              child: SvgPicture.asset(svgPicturePath),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 16.h),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 2, color: color2),
            ),
          ),
          child: Text(title, style: sliderTitleTextStyle),
        ),
        SizedBox(height: 24.h),
        Text(
          description,
          textAlign: TextAlign.center,
          style: noramlTextStyle,
        )
      ],
    );
  }
}
