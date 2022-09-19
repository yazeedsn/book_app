import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookSlide extends StatelessWidget {
  const BookSlide(
      {Key? key, required this.image, required this.title, required this.price})
      : super(key: key);

  final ImageProvider<Object> image;
  final String title;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: 180.h,
          width: 150.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
                image: image,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.07),
                offset: const Offset(0, 13),
                blurRadius: 25,
              ),
            ],
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.end,
          style: const TextStyle(
            color: Color(0xFF2A2A2A),
            fontSize: 16,
          ),
        ),
        Text(
          '\$$price',
          textAlign: TextAlign.end,
          style: const TextStyle(
            color: Color(0xFF2A2A2A),
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
