import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatSlide extends StatelessWidget {
  const CatSlide({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final ImageProvider<Object> image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 114.w,
      height: 65.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              offset: Offset(0, 15.h),
              blurRadius: 31.r,
            )
          ]),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
