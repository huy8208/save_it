import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_it/app/modules/home_page/controller.dart';
import 'package:save_it/app/routes/app_pages.dart';
import 'package:save_it/app/widgets/button_widget.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<HomeController>(
        builder: (HomeController controller) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(controller.something),
                RaisedButtonCustomWidget(
                  icon: Icons.savings_rounded,
                  onPressed: () {
                    Get.toNamed(Routes.DETAILS);
                  },
                  text: controller.something,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
