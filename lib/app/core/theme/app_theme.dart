import 'package:flutter/material.dart';
import 'package:save_it/app/core/theme/app_colors.dart';
import 'package:save_it/app/core/theme/app_int.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: AppColors.primaryColor,
  colorScheme: ThemeData().colorScheme.copyWith(
        primary: AppColors.primaryColor,
      ),
  fontFamily: 'nunito',
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      onPrimary: AppColors.white,
      primary: AppColors.primaryColor,
      padding: const EdgeInsets.symmetric(vertical: AppInt.defaultPadding),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      primary: AppColors.primaryColor,
      padding: const EdgeInsets.symmetric(vertical: AppInt.defaultPadding),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      side: const BorderSide(
        color: AppColors.primaryColor,
      ),
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: AppColors.primaryColor,
    selectionColor: AppColors.primaryColor,
    selectionHandleColor: AppColors.primaryColor,
  ),
  checkboxTheme: CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    checkColor: MaterialStateProperty.all(Colors.white),
    fillColor: MaterialStateProperty.all(AppColors.primaryColor),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 14,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(
        width: 2,
        color: AppColors.primaryColor,
      ),
    ),
  ),
  iconTheme: const IconThemeData(
    color: AppColors.dark,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    unselectedItemColor: AppColors.dark,
    selectedItemColor: AppColors.primaryColor,
    showUnselectedLabels: true,
  ),
  tabBarTheme: const TabBarTheme(
    indicator: BoxDecoration(
      border: Border(
        top: BorderSide(
          color: AppColors.primaryColor,
          width: 3.0,
        ),
      ),
    ),
    unselectedLabelColor: AppColors.dark,
    labelColor: AppColors.primaryColor,
    labelPadding: EdgeInsets.only(
      bottom: 16,
    ),
  ),
);
