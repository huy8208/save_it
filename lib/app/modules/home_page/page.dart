import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_it/app/modules/home_page/controller.dart';
import 'package:save_it/app/widgets/button_widget.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(
      builder: (HomeController controller) {
        controller.something = Get.find<HomeController>().something;
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButtonCustomWidget(
                icon: Icons.savings_rounded,
                onPressed: () {
                  Get.toNamed('/sample_page');
                },
                text: controller.something,
              ),
            ],
          ),
        );
      },
    );
  }
}
