import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_it/app/modules/sample_screen/binding.dart';
import 'package:save_it/app/modules/sample_screen/controller.dart';
import 'package:save_it/app/widgets/button_widget.dart';

class SampleScreen extends GetView<SampleController> {
  @override
  Widget build(BuildContext context) {
    // SamplePageBinding().dependencies();
    return Scaffold(
      body: GetX<SampleController>(
        builder: (SampleController controller) {
          // controller.something = Get.find<SampleController>().something;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(controller.something),
                const Text('SAMPLE TITLE'),
                RaisedButtonCustomWidget(
                  icon: Icons.savings_outlined,
                  onPressed: () {
                    Get.toNamed('/root');
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
