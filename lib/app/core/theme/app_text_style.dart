import 'package:flutter/material.dart';
import 'package:save_it/app/core/theme/app_colors.dart';

class AppTextStyle {
  static const TextStyle titleStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w800,
  );
  static const TextStyle textTitleInput = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w800,
  );
  static const TextStyle textHavelink = TextStyle(
    color: AppColors.primaryColor,
  );

  //PROFILE PAGES
  static const TextStyle nameProfile = TextStyle(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w800,
  );
  static const TextStyle emailProfile = TextStyle(
    color: AppColors.white,
  );
  static const TextStyle idProfile = TextStyle(
    color: AppColors.white,
    fontSize: 14,
    decoration: TextDecoration.underline,
    decorationThickness: 3,
  );

  //REGULAR
  static const TextStyle size12 = TextStyle(
    fontSize: 12,
  );

  //BOLD
  static const TextStyle size12Bold = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w800,
  );
  static const TextStyle size16Bold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w800,
  );

  //COLOR WHITE
  static const TextStyle size14White = TextStyle(
    fontSize: 16,
    color: Colors.white,
  );

  static const TextStyle size16WhiteBold = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w800,
  );

  //COLOR BLACK
  static const TextStyle size14Black = TextStyle(
    fontSize: 16,
    color: Colors.black,
  );

  static const TextStyle size16DarkBold = TextStyle(
    fontSize: 16,
    color: AppColors.dark,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle size20BlackBold = TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.w800,
  );
}
