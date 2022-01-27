import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_it/app/core/theme/app_text_theme.dart';
import 'package:save_it/app/modules/details/controller.dart';

class CardTopCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: GetX<DetailsController>(
          builder: (DetailsController controller) => Text(
            controller.something,
            style: cardTextStyle,
          ),
        ),
      ),
    );
  }
}
