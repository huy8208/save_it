import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:save_it/app/core/theme/app_colors.dart';
import 'package:save_it/app/core/theme/app_images_urls.dart';
import 'package:save_it/app/modules/authentication_screens/onboarding_screen/controller.dart';

class OnBoardingScreen extends GetView<OnBoardingScreenController> {
  @override
  Widget build(BuildContext context) => IntroductionScreen(
        pages: <PageViewModel>[
          PageViewModel(
            title: 'Save money',
            body: 'allUrFinances'.tr,
            image: buildImage(AppImage.allInOneFinance),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Check your wallet',
            body: 'manageUrMoney'.tr,
            image: buildImage(AppImage.logoImage),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Have access anywhere!',
            body: 'reachUrGoal'.tr,
            image: buildImage(AppImage.logoImage),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Today a reader, tomorrow a leader',
            body: 'Start your journey',
            footer: ElevatedButton(
              child: const Text('Get Started'),
              onPressed: () {},
            ),
            image: buildImage(AppImage.logoImage),
            decoration: getPageDecoration(),
          ),
        ],
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
        onDone: () => controller.goToWelcomeScreen(),
        showSkipButton: true,
        skip: const Text('Skip'),
        onSkip: () => controller.goToWelcomeScreen(),
        next: const Icon(Icons.arrow_forward),
        dotsDecorator: getDotDecoration(),
        globalBackgroundColor: AppColors.bgColor,
        // isProgressTap: false,
        // isProgress: false,
        // showNextButton: false,
        // freeze: true,
        // animationDuration: 1000,
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: AppColors.dark,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        imagePadding: EdgeInsets.only(top: 100),
        pageColor: AppColors.bgColor,
        imageFlex: 2,
      );
}
