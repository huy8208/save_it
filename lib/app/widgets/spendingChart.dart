import 'package:flutter/material.dart';
import 'package:save_it/app/core/theme/app_colors.dart';
import 'package:save_it/app/core/theme/app_int.dart';

class SpendingChart extends StatefulWidget {
  const SpendingChart({
    Key? key,
    required this.dates,
  }) : super(key: key);

  final Map<String, int> dates;

  @override
  State<SpendingChart> createState() => _SpendingChartState();
}

class _SpendingChartState extends State<SpendingChart> {
  @override
  Widget build(BuildContext context) {
    Map<String, int> dates = {
      'Mon': 100,
      'Tue': 200,
      'Wed': 300,
      'Thu': 400,
      'Fri': 500,
      'Sat': 600,
      'Sun': 700
    };
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
              DropdownButton<String>(
                items: <String>['This Week', 'This Month', 'This Year']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {},
              ),
            ],
          ),
          const Divider(
            color: AppColors.white,
            indent: 10,
            endIndent: 10,
            thickness: 0.5,
          ),
          Dates()
        ],
      ),
    );
  }
}

class Dates extends StatefulWidget {
  const Dates({
    Key? key,
  }) : super(key: key);

  @override
  State<Dates> createState() => _DatesState();
}

class _DatesState extends State<Dates> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Date(value: 'Mon'),
          Date(value: 'Tue'),
          Date(value: 'Wed'),
          Date(value: 'Thu'),
          Date(value: 'Fri'),
          Date(value: 'Sat'),
          Date(value: 'Sun'),
        ],
      ),
    );
  }
}

class Date extends StatefulWidget {
  Date({
    Key? key,
    required this.value,
  }) : super(key: key);

  String value;

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: AppColors.canary),
          height: 80,
          width: 10,
        ),
        Text(
          widget.value,
          style: const TextStyle(color: AppColors.white),
        ),
      ],
    );
  }
}
