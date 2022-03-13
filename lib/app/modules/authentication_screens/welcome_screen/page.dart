import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:save_it/app/core/theme/app_images_urls.dart';
import 'package:save_it/app/core/theme/app_int.dart';
import 'package:save_it/app/modules/authentication_screens/welcome_screen/controller.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  WelcomeScreenController controller = Get.find<WelcomeScreenController>();

  @override
  void initState() {
    super.initState();
    controller.animationController.forward();
    controller.animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: controller.animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: 60.0,
                    child: Image.asset(AppImage.logoImage),
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'SaveIt',
                      textStyle: const TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                      ),
                      speed: const Duration(milliseconds: 250),
                    ),
                  ],
                  repeatForever: true,
                  pause: const Duration(seconds: 2),
                ),
                Container(
                  height: 48,
                ),
                SizedBox(
                  child: OutlinedButton(
                    onPressed: () {
                      controller.handleLoginButton();
                    },
                    child: Text('login'.tr),
                  ),
                ),
                const SizedBox(width: AppInt.defaultPadding),
                ElevatedButton(
                  onPressed: () {
                    controller.handleRegisterButton();
                  },
                  child: Text('register'.tr),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Expanded _buildImage() {
    return Expanded(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 60.0,
            vertical: 40,
          ),
          child: Image.asset(
            AppImage.logoImage,
          ),
        ),
      ),
    );
  }
}
