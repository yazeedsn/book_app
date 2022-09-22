import 'package:books/Screens/cart_screen.dart';
import 'package:books/fast_navigation.dart';
import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemDeatilScreen extends StatelessWidget {
  const ItemDeatilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 28.w, top: 43.h, right: 28.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'إينولا هولمز وقضية اختفاء الماركيز',
                  style: TextStyle(
                    color: const Color(0xFF434343),
                    fontSize: 15.sp,
                  ),
                ),
                SizedBox(height: 30.h),
                SizedBox(
                  height: 180.h,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'assets/images/holms.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'إينولا هولمز وقضية اختفاء الماركيز',
                  style: TextStyle(
                    color: const Color(0xFF434343),
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFE1E1E1),
                          borderRadius: BorderRadius.circular(4.r)),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                              visualDensity: VisualDensity.compact,
                            ),
                            child: Text(
                              '-',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 27.sp,
                              ),
                            ),
                          ),
                          const Text(
                            '1',
                            style: TextStyle(
                              color: color2,
                              fontSize: 16,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                              visualDensity: VisualDensity.compact,
                            ),
                            child: Text(
                              '+',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 27.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(child: SizedBox(width: 1)),
                    const Text(
                      '\$34',
                      style: TextStyle(
                        color: color2,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 20.w),
                  ],
                ),
                SizedBox(height: 20.h),
                Text(
                  'قصة الكتاب ',
                  style: TextStyle(
                    color: const Color(0xFF434343),
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 225.h,
                  child: const Text(
                      'نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن  نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن  نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص من المفترض أن يكون هنا نموذج نص  '),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 55.h,
                  alignment: Alignment.center,
                  color: color2,
                  child: Text(
                    'اشتري الان',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    navigate(context, const CartScreen());
                  },
                  child: Container(
                    height: 55.h,
                    alignment: Alignment.center,
                    color: const Color(0xFFE1E1E1),
                    child: Text(
                      'اضف الى السلة',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
