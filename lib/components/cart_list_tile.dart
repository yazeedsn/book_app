import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartListTile extends StatelessWidget {
  const CartListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 138.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.16),
              offset: const Offset(0, 3),
              blurRadius: 6),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 13.h, bottom: 20.h, left: 6.w, right: 10.w),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 100.w,
                  height: 104.h,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.16),
                          offset: const Offset(0, 3),
                          blurRadius: 6),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/holms.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 12.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'إينولا هولمز وقضية اختفاء الماركيز',
                      style: TextStyle(
                          color: const Color(0xFF434343), fontSize: 12.sp),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      '\$34.00',
                      style: TextStyle(
                          color: const Color(0xFF870A90), fontSize: 13.sp),
                    ),
                    const Expanded(child: SizedBox(height: 1)),
                    Container(
                      width: 118.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          color: const Color(0xFFF6F6F6),
                          borderRadius: BorderRadius.circular(4.r)),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: Size.zero,
                                visualDensity: VisualDensity.compact,
                              ),
                              child: Text(
                                '-',
                                style: TextStyle(
                                  color: const Color(0xFF565656),
                                  fontSize: 27.sp,
                                ),
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF565656),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: Size.zero,
                                visualDensity: VisualDensity.compact,
                              ),
                              child: Text(
                                '+',
                                style: TextStyle(
                                  color: const Color(0xFF565656),
                                  fontSize: 27.sp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
