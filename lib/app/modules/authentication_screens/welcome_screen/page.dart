import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
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
                    child: Image.asset('lib/app/assets/logo.png'),
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
                const CustomElevatedButton(
                  buttonName: 'Login',
                  color: Colors.lightBlueAccent,
                  getToPage: '/login_screen',
                ),
                const CustomElevatedButton(
                  buttonName: 'Register',
                  color: Colors.lightBlueAccent,
                  getToPage: '/sample_screen',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.buttonName,
    required this.color,
    required this.getToPage,
  }) : super(key: key);

  final String buttonName;
  final MaterialAccentColor color;
  final String getToPage;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.toNamed(getToPage);
      },
      style: ElevatedButton.styleFrom(primary: color),
      child: Text(buttonName),
    );
  }
}
