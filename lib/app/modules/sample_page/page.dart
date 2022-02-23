import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_it/app/modules/home_page/controller.dart';
import 'package:save_it/app/modules/sample_page/binding.dart';
import 'package:save_it/app/modules/sample_page/controller.dart';
import 'package:save_it/app/widgets/button_widget.dart';

class SamplePage extends GetView<SampleController> {
  @override
  Widget build(BuildContext context) {
    SamplePageBinding().dependencies();
    return Scaffold(
      body: GetX<SampleController>(
        builder: (SampleController controller) {
          controller.something = Get.find<SampleController>().something;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(controller.something),
                const Text('SAMPLE PAGE'),
                RaisedButtonCustomWidget(
                  icon: Icons.savings_outlined,
                  onPressed: () {
                    Get.back();
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
