import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:save_it/app/modules/authentication_screens/welcome_screen/page.dart';
import 'package:save_it/app/modules/home_screen/page.dart';
import 'package:save_it/app/modules/root_screen/controller.dart';
import 'package:save_it/app/modules/sample_screen/page.dart';

class RootScreen extends GetView<RootController> {
  // Building bottom tab bar for navigation between pages
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.moneyBillAlt)),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.plusCircle)),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.wallet)),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.userAlt)),
        ],
        activeColor: const Color(0xff174f2a),
        backgroundColor: const Color(0xFFFFFFFF),
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (BuildContext context) {
              return CupertinoPageScaffold(
                child: WelcomeScreen(),
              );
            });
          case 1:
            return CupertinoTabView(
              builder: (BuildContext context) {
                return CupertinoPageScaffold(
                  child: SampleScreen(),
                );
              },
            );
          default:
            return CupertinoTabView(
              builder: (BuildContext context) {
                return CupertinoPageScaffold(
                  child: WelcomeScreen(),
                );
              },
            );
        }
      },
    );
  }
}
