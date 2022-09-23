import 'package:books/Screens/about_us.dart';
import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: outlinedButtonStyle,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const ContactUs(),
      ),
    );
  }
}
