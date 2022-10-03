import 'package:books/Screens/home_screen.dart';
import 'package:books/fast_navigation.dart';
import 'package:books/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:books/valdiation.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: const SignupForm(),
        ),
      ),
    );
  }
}

class SignupForm extends StatefulWidget {
  const SignupForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 100.h),
          Text(
            'انشاء حساب',
            style: pageTitleTextStyle,
          ),
          SizedBox(height: 60.h),
          TextFormField(
            decoration: const InputDecoration(
              label: Text('الاسم'),
            ),
          ),
          SizedBox(height: 24.h),
          TextFormField(
            validator: (value) {
              if (value == null || !value.isValidEmail()) {
                return 'Enter a valid email.';
              }
              return null;
            },
            decoration: const InputDecoration(
              label: Text('بريد إلكتروني'),
            ),
          ),
          SizedBox(height: 24.h),
          TextFormField(
            validator: (value) {
              if (value == null || !value.isValidPassword()) {
                return 'Password must be more than 8 characters long.';
              }
              return null;
            },
            obscureText: _isHidden,
            decoration: InputDecoration(
              label: const Text('كلمة السر'),
              suffixIcon: GestureDetector(
                onTap: () => setState(() => _isHidden = !_isHidden),
                child: Icon(
                  Icons.remove_red_eye_rounded,
                  size: 22.r,
                  color: const Color(0xFFC6CBD4),
                ),
              ),
            ),
          ),
          SizedBox(height: 50.h),
          OutlinedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                navigate(context, const HomeScreen());
              }
            },
            child: Text('اشتراك', style: outlinedButtonTextStyle),
          ),
          SizedBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'لديك حساب بالفعل؟',
                style: TextStyle(color: Color(0xFFA3A3A3), fontSize: 14),
              ),
              SizedBox(width: 12.w),
              const Text(
                'تسجيل الدخول',
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
