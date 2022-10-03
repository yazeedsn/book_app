import 'package:books/Screens/auth/password_screen.dart';
import 'package:books/Screens/auth/signup_screen.dart';
import 'package:books/Screens/home_screen.dart';
import 'package:books/fast_navigation.dart';
import 'package:books/styling.dart';
import 'package:books/valdiation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: const LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
          Text('تسجيل الدخول', style: pageTitleTextStyle),
          SizedBox(height: 60.h),
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
            child: Text('تسجيل الدخول', style: outlinedButtonTextStyle),
          ),
          SizedBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'ليس لديك حساب؟',
                style: TextStyle(color: Color(0xFFA3A3A3), fontSize: 14),
              ),
              TextButton(
                onPressed: () => navigate(context, const SignupScreen()),
                child: const Text(
                  'إنشاء حساب',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ],
          ),
          SizedBox(height: 14.h),
          TextButton(
            onPressed: () {
              navigate(context, const PasswordScreen());
            },
            style: ButtonStyle(
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero)),
            child: const Text(
              'نسيت كلمة المرور؟',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
