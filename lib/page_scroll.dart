import 'package:figma_first_project/onboarding_page_1.dart';
import 'package:figma_first_project/onboarding_page_2.dart';
import 'package:figma_first_project/onboarding_page_3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageScroll extends StatefulWidget {
  @override
  State<PageScroll> createState() => _PageScrollState();
}

class _PageScrollState extends State<PageScroll> {
  var controller = PageController();
  List pages = [OnboardingPage1(), OnboardingPage2(), OnboardingPage3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView.builder(
          controller: controller,
          itemBuilder: (context, index) {
            return pages[index];
          },
          itemCount: pages.length,
        ),
        Positioned(
          bottom: 130, // Adjust position as needed
          left: 0,
          right: 0,
          child: Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: pages.length,
              effect: ExpandingDotsEffect(
                dotHeight: 12.0, // Adjust the size of the dots
                dotWidth: 12.0,
                spacing: 6.0,
                expansionFactor: 2.0,
                activeDotColor: Colors.blue, // Active dot color
                dotColor: Colors.grey, // Inactive dot color
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
