import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_it/app/core/theme/app_colors.dart';
import 'package:save_it/app/core/theme/app_currency.dart';
import 'package:save_it/app/core/theme/app_int.dart';
import 'package:save_it/app/core/theme/app_text_style.dart';
import 'package:save_it/app/modules/home_screen/page.dart';
import 'package:save_it/app/modules/main/controller.dart';
import 'package:save_it/app/modules/profile_screen/page.dart';
import 'package:save_it/app/widgets/spendingChart.dart';

class MainScreen extends GetView<MainScreenController> {
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
              _buildTab(Icons.people_alt, 'Transaction'),
              _buildTab(Icons.money_rounded, 'Budget'),
              _buildTab(Icons.notifications, 'Notification'),
              _buildTab(Icons.person_rounded, 'Profile'),
            ],
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            HomeScreen(),
            const Center(child: Text('2')),
            const Center(child: Text('3')),
            const Center(child: Text('4')),
            ProfileScreen(),
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
