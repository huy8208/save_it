import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:save_it/app/modules/authentication_screens/welcome_screen/page.dart';
import 'package:save_it/app/modules/home_screen/controller.dart';
import 'package:save_it/app/modules/sample_screen/page.dart';

class HomeScreen extends GetView<HomeScreenController> {
  // Building bottom tab bar for navigation between pages
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: ColoredBox(
          color: Colors.white,
          child: TabBar(
            tabs: <Tab>[
              _buildTab(Icons.home_filled, 'Home'),
              _buildTab(Icons.people_alt, 'My Children'),
              _buildTab(Icons.menu_book_rounded, 'Course'),
              _buildTab(Icons.notifications, 'Notificaiton'),
              _buildTab(Icons.person_rounded, 'Profile'),
            ],
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Center(child: Text('1')),
            Center(child: Text('2')),
            Center(child: Text('3')),
            Center(child: Text('4')),
            Center(child: Text('5'))
          ],
        ),
      ),
    );
  }

  Tab _buildTab(
    IconData icon,
    String label,
  ) {
    return Tab(
      text: label,
      icon: Icon(icon),
      iconMargin: const EdgeInsets.only(
        bottom: 4,
      ),
    );
  }
}
