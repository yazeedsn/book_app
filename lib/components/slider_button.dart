import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:books/styling.dart';

class SliderButton extends StatelessWidget {
  const SliderButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: null,
      style: ButtonStyle(
          textStyle: MaterialStateProperty.all<TextStyle>(
              sliderTitleTextStyle.copyWith(fontSize: 13.sp))),
      child: Text(
        text,
        style: const TextStyle(color: color2),
      ),
    );
  }
}
