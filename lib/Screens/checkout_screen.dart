import 'package:books/Screens/confirmation_screen.dart';
import 'package:books/fast_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:books/components/cart_list_tile.dart';
import 'package:books/styling.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 28.w, top: 43.h, right: 28.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'السلة',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 32.h),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemCount: 2,
                itemBuilder: (context, index) => const CartListTile(),
                separatorBuilder: (context, index) => SizedBox(height: 38.h),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'المجموع',
                  style: TextStyle(
                    color: const Color(0xFF434343),
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(width: 16.w),
                Text(
                  '\$34',
                  style: TextStyle(
                    color: const Color(0xFF434343),
                    fontSize: 20.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.h),
            OutlinedButton(
              onPressed: () {
                navigate(context, const ConfirmationScreen());
              },
              child: Text('شراء', style: outlinedButtonTextStyle),
            ),
            SizedBox(height: 26.h),
          ],
        ),
      ),
    );
  }
}
