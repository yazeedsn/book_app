import 'package:books/Screens/checkout_screen.dart';
import 'package:books/fast_navigation.dart';
import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:books/components/cart_list_tile.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

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
                itemCount: 6,
                itemBuilder: (context, index) => const CartListTile(),
                separatorBuilder: (context, index) => SizedBox(height: 38.h),
              ),
            ),
            SizedBox(height: 40.h),
            OutlinedButton(
              onPressed: () {
                navigate(context, const CheckoutScreen());
              },
              child: Text('استمر', style: outlinedButtonTextStyle),
            ),
            SizedBox(height: 26.h),
          ],
        ),
      ),
    );
  }
}
