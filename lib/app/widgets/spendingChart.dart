import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_it/app/core/theme/app_colors.dart';
import 'package:save_it/app/core/theme/app_int.dart';

class SpendingChartController extends GetxController {
  final RxMap<String, int> dates = {
    'Mon': 100,
    'Tue': 200,
    'Wed': 300,
    'Thu': 400,
    'Fri': 500,
    'Sat': 600,
    'Sun': 700
  }.obs;
  RxList<String> period = ['This week', 'This month', 'This year'].obs;
}

class SpendingChartUI extends GetView<SpendingChartController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      margin: const EdgeInsets.symmetric(
          vertical: AppInt.defaultPadding, horizontal: AppInt.defaultPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: AppColors.black),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                'Analytics',
                style: TextStyle(color: AppColors.white),
              ),
              Obx(
                () => DropdownButton<String>(
                  value: controller.period[0],
                  dropdownColor: AppColors.black,
                  style: const TextStyle(color: AppColors.canary),
                  underline: Container(
                    height: 2,
                    color: AppColors.white,
                  ),
                  items: controller.period
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {},
                ),
              ),
            ],
          ),
          const Divider(
            color: AppColors.white,
            indent: 10,
            endIndent: 10,
            thickness: 0.5,
          ),
          dates()
        ],
      ),
    );
  }
}

Container dates() {
  return Container(
    height: 100,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        date('Mon'),
        date('Tue'),
        date('Wed'),
        date('Thu'),
        date('Fri'),
        date('Sat'),
        date('Sun'),
      ],
    ),
  );
}

Column date(String value) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), color: AppColors.canary),
        height: 60,
        width: 10,
      ),
      Text(
        value,
        style: const TextStyle(color: AppColors.white),
      ),
    ],
  );
}
