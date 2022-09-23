import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 12.h),
              child: Text(
                'المفضلة',
                style: TextStyle(
                  color: const Color(0xFF434343),
                  fontSize: 30.sp,
                ),
              ),
            ),
            const Divider(),
            SizedBox(height: 20.h),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.only(bottom: 40.h),
                clipBehavior: Clip.hardEdge,
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) => const FavListTile(),
                separatorBuilder: (context, index) => SizedBox(height: 28.h),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavListTile extends StatelessWidget {
  const FavListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SizedBox(
        height: 108.h,
        child: Stack(
          fit: StackFit.loose,
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: 84.h,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.16),
                    offset: Offset(0, 3.h),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(width: 8.w),
                  const Icon(
                    Icons.favorite,
                    color: Color(0xFFF72424),
                  ),
                  const Expanded(child: SizedBox(width: 1)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'أريد هاتف أمي',
                        style: TextStyle(
                          color: const Color(0xFF343131),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        '\$10.0',
                        style: TextStyle(
                          color: const Color(0xFF090909),
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  const Expanded(child: SizedBox(width: 1)),
                ],
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                width: 116.w,
                height: 110.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/b_cover.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      offset: const Offset(0, 13),
                      blurRadius: 25,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
