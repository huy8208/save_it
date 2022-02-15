import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_it/app/modules/sample_page/controller.dart';
import 'package:save_it/app/widgets/button_widget.dart';

class CardBottomButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        GetX<DetailsController>(
          builder: (DetailsController controller) {
            return RaisedButtonCustomWidget(
              icon: Icons.delete_outline,
              onPressed: () => controller.doSomething(),
              text: 'Delete',
            );
          },
        ),
      ],
    );
  }
}
