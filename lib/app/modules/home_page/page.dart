import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_it/app/modules/home_page/binding.dart';
import 'package:save_it/app/modules/home_page/controller.dart';
import 'package:save_it/app/widgets/button_widget.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    HomeBinding().dependencies();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButtonCustomWidget(
            icon: Icons.savings_rounded,
            onPressed: () {
              controller.openPlaidAuthentication();
            },
            text: 'hello',
          ),
        ],
      ),
    );
  }
}
