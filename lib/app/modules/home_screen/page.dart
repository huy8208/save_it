import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:save_it/app/core/theme/app_colors.dart';
import 'package:save_it/app/core/theme/app_currency.dart';
import 'package:save_it/app/core/theme/app_int.dart';
import 'package:save_it/app/core/theme/app_text_style.dart';
import 'package:save_it/app/modules/authentication_screens/welcome_screen/page.dart';
import 'package:save_it/app/modules/home_screen/controller.dart';
import 'package:save_it/app/modules/profile_screen/page.dart';

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
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            HomeScreenUI(),
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

class HomeScreenUI extends StatelessWidget {
  const HomeScreenUI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Home',
          style: AppTextStyle.size20BlackBold,
        ),
        backgroundColor: AppColors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: AppInt.defaultPadding),
            child: IconButton(
              icon: const Icon(
                Icons.notifications_none_rounded,
                size: 30,
                color: AppColors.dark,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildIncomeAndSpending('month', 3000.12),
            const SizedBox(height: AppInt.defaultPadding),
            _buildChart(),
            const SizedBox(height: AppInt.defaultPadding),
            _buildHighlights(),
            const SizedBox(height: AppInt.defaultPadding),
          ],
        ),
      ),
    );
  }

  Container _buildIncomeAndSpending(String period, double amount) {
    return Container(
      height: 140,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      margin: const EdgeInsets.symmetric(
          vertical: AppInt.defaultPadding, horizontal: AppInt.defaultPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: AppColors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'This $period spends',
            style: AppTextStyle.size16DarkBold,
          ),
          const SizedBox(height: AppInt.defaultPadding),
          Text(
            '\$${AppCurrency.USdollar.format(amount)}',
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 45,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }

  Container _buildChart() {
    return Container();
  }

  Container _buildHighlights() {
    return Container();
  }
}
