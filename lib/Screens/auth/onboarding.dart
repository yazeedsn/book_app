import 'package:books/Screens/auth/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:books/styling.dart';
import 'package:books/components/slider_button.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final List<Slide> _slides = <Slide>[];

  @override
  void initState() {
    super.initState();
    _slides.add(
      _buildSlide(
          title: 'هدفنا مرضاتكم',
          description:
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص ',
          imagePath: 'assets/images/onboarding1.svg'),
    );
    _slides.add(
      _buildSlide(
          title: 'نسهل عليكم اختياركم',
          description:
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص ',
          imagePath: 'assets/images/onboarding2.svg'),
    );
    _slides.add(
      _buildSlide(
          title: 'نجعل تسوّقك أسهل',
          description:
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص ',
          imagePath: 'assets/images/onboarding3.svg'),
    );
  }

  Slide _buildSlide(
      {required String title,
      required String description,
      required String imagePath}) {
    return Slide(
        widgetTitle: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SvgPicture.asset(imagePath),
        ),
        centerWidget: Container(
          padding: EdgeInsets.only(bottom: 16.h),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 2, color: color2),
            ),
          ),
          child: Text(title, style: sliderTitleTextStyle),
        ),
        widgetDescription: Text(
          description,
          textAlign: TextAlign.center,
          style: noramlTextStyle,
        ),
        marginDescription:
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: IntroSlider(
        slides: _slides,
        renderSkipBtn: const SliderButton(text: 'تخطي'),
        renderNextBtn: const SliderButton(text: 'التالي'),
        renderDoneBtn: const SliderButton(text: 'تم'),
        colorActiveDot: color2,
        onDonePress: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const WelcomeScreen())),
      ),
    );
  }
}
