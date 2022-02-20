import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_it/app/modules/home_page/controller.dart';
import 'package:save_it/app/modules/sample_page/controller.dart';
import 'package:save_it/app/widgets/button_widget.dart';

class SamplePage extends GetView<DetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<DetailsController>(
        builder: (DetailsController controller) {
          controller.something = Get.find<DetailsController>().something;
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
