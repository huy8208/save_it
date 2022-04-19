import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:save_it/app/core/theme/app_colors.dart';
import 'package:save_it/app/models/bank_details.dart';
import 'package:save_it/app/routes/app_pages.dart';
import 'package:save_it/app/services/providers/firebase.dart';

class ProfileScreenController extends GetxController {
  final FICOscore dummyData = FICOscore(
    ficoScore: 12344.67,
    name: 'DummyNguyen',
    email: 'dummy@gmail.com',
    imageUrl:
        'https://images.squarespace-cdn.com/content/v1/5c889234c2ff61063923c0e4/1554949695597-S0KNCJ7CHC0JBXX1LRPE/mother-child-asdina.jpg',
    id: 98765,
  );

  void handleSignOutAction() {
    Get.offAndToNamed(AppRoutes.LOGIN_SCREEN);
  }

  void handleClickMenuAction(String route) {
    Get.toNamed(route);
  }

  void handleClickCopyFICOscoreAction() {
    Clipboard.setData(const ClipboardData(text: 'FICO SCORE')).then(
      (_) => Get.snackbar(
        'Success copy !',
        'The ID has been copied to the clipboard',
        backgroundColor: AppColors.white,
        boxShadows: <BoxShadow>[
          BoxShadow(
            color: AppColors.dark.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
    );
  }
}
