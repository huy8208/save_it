import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:get/get.dart';
import 'package:save_it/app/core/theme/app_colors.dart';
import 'package:save_it/app/core/theme/app_currency.dart';
import 'package:save_it/app/core/theme/app_int.dart';
import 'package:save_it/app/core/theme/app_text_style.dart';
import 'package:save_it/app/modules/home_screen/controller.dart';
import 'package:save_it/app/widgets/spendingChart.dart';

class HomeScreen extends GetView<HomeScreenController> {
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
            SpendingChartUI(),
            const SizedBox(height: AppInt.defaultPadding),
            // FutureBuilder<Widget>(future:  _buildNewsSider(),builder: ),

            const SizedBox(height: AppInt.defaultPadding),
            _buildMarketIndexes(),
            const SizedBox(height: AppInt.defaultPadding),
            _buildNewsSider(),
            const SizedBox(height: AppInt.defaultPadding),
            _buildRecentTransactions(),
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

  Future<Widget> _buildNewsSider() async {
    return Center(
      child: Column(
        children: [
          const Text('Top Stories'),
          CustomCarouselSlider(
            items: await controller.parseHeadline(),
            height: 150,
            subHeight: 50,
            width: Get.width * .9,
            autoplay: false,
          ),
        ],
      ),
    );
  }

  Center _buildMarketIndexes() {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.arrow_circle_up),
              title: Text('S&P 500'),
              subtitle: Text('4,271.78'),
            ),
            const ListTile(
              leading: Icon(Icons.arrow_circle_down),
              title: Text('Dow Jones'),
              subtitle: Text('33,811.40'),
            ),
            Row(
              children: <Widget>[
                TextButton(
                  child: const Text('Test'),
                  onPressed: () {
                    controller.pushTestData();
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentTransactions() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      margin: const EdgeInsets.symmetric(vertical: AppInt.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recent Transactions', style: AppTextStyle.size12Bold),
          Column(
            children: [
              transactionItem(),
              transactionItem(),
              transactionItem(),
              transactionItem()
            ],
          ),
        ],
      ),
    );
  }

  Widget transactionItem() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 65,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 5,
            // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(flex: 1, child: Icon(Icons.restaurant_menu)),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Coconut Juice',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Text(
                  'Foods and Drink',
                  maxLines: 1,
                ),
              ],
            ),
          ),
          Spacer(),
          Flexible(
            flex: 2,
            child: FittedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("\$" + '10.00', style: TextStyle(fontSize: 12)),
                  Text('01/01/1980'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
