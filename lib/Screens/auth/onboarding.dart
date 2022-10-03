import 'package:books/Screens/auth/welcome_screen.dart';
import 'package:books/fast_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:books/components/boarding_page.dart';
import 'package:books/components/slider_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final List<Widget> _slides = [
    const BoardingPage(
      title: 'هدفنا مرضاتكم',
      description:
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص ',
      svgPicturePath: 'assets/images/onboarding1.svg',
    ),
    const BoardingPage(
      title: 'نسهل عليكم اختياركم',
      description:
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص ',
      svgPicturePath: 'assets/images/onboarding2.svg',
    ),
    const BoardingPage(
      title: 'نجعل تسوّقك أسهل',
      description:
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص ',
      svgPicturePath: 'assets/images/onboarding3.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: PageSlider(children: _slides),
    );
  }
}

class PageSlider extends StatefulWidget {
  const PageSlider({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  State<PageSlider> createState() => _PageSliderState();
}

class _PageSliderState extends State<PageSlider> {
  final PageController _controller = PageController();
  late int pageCount;

  bool _skipVisible = true;
  String _nextText = 'التالي';
  bool _isAnimating = false;

  @override
  void initState() {
    super.initState();
    pageCount = widget.children.length;
    _controller.addListener(() {
      if (_controller.page! >= pageCount - 1.5) {
        setState(() {
          _skipVisible = false;
          _nextText = 'تم';
        });
      } else {
        setState(() {
          _skipVisible = true;
          _nextText = 'التالي';
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375.w,
      height: 812.h,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: widget.children,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SliderButton(
                    visible: _skipVisible,
                    onPressed: () async {
                      if (_controller.positions.isEmpty || _isAnimating) {
                        return;
                      }
                      _isAnimating = true;

                      await _controller.animateToPage(
                        pageCount - 1,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                      _isAnimating = false;
                    },
                    text: 'تخطي'),
                Expanded(
                  child: Center(
                    child: AnimatedSmoothIndicator(
                      activeIndex: 4,
                      count: 9,
                      effect: const ScrollingDotsEffect(
                        fixedCenter: true,
                        paintStyle: PaintingStyle.fill,
                        activeDotScale: 0,
                      ),
                    ),
                  ),
                ),
                SliderButton(
                    onPressed: () async {
                      if (_controller.positions.isEmpty || _isAnimating) {
                        return;
                      }
                      if (_controller.page == pageCount - 1) {
                        navigate(context, const WelcomeScreen());
                      }
                      _isAnimating = true;
                      await _controller.nextPage(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                      _isAnimating = false;
                    },
                    text: _nextText)
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
