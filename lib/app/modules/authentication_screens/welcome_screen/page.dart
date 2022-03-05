import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:save_it/app/modules/authentication_screens/welcome_screen/controller.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    WelcomeScreenController controller = Get.find<WelcomeScreenController>();
    return Scaffold(
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
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/homepage');
                  },
                  child: const Text('Log In'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/homepage');
                  },
                  child: const Text('Register'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
