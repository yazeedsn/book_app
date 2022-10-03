import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:books/styling.dart';

class SliderButton extends StatelessWidget {
  const SliderButton({
    Key? key,
    required this.text,
    this.visible,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final void Function() onPressed;
  final bool? visible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible ?? true,
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all<TextStyle>(
                sliderTitleTextStyle.copyWith(fontSize: 13.sp))),
        child: Text(
          text,
          style: const TextStyle(color: color2),
        ),
      ),
    );
  }
}
