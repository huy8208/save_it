import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_it/app/core/theme/app_text_theme.dart';
import 'package:save_it/app/modules/sample_page/controller.dart';

class CardBottomCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: GetX<DetailsController>(
                builder: (DetailsController controller) => Text(
                  controller.something,
                  style: cardTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
