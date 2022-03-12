import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_it/app/modules/authentication_screens/login_screen/controller.dart';

class LoginScreen extends GetView<LoginScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetX<LoginScreenController>(
        builder: (LoginScreenController controller) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Flexible(
                    child: Hero(
                      tag: controller.logoText.value,
                      child: SizedBox(
                        height: 200,
                        child: Image.asset('lib/app/assets/logo.png'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Color(0xff174f2a),
                      ),
                      hintText: 'email@site.com',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff174f2a)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff174f2a), width: 1.5),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const TextField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Color(0xff174f2a),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff174f2a))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff174f2a), width: 1.5)),
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  ElevatedButton(
                    onPressed: controller.LoginButtonClicked,
                    child: Text('Login'),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
