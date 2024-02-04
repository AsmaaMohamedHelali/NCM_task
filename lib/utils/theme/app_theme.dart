import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ncm/utils/colors/app_colors.dart';

class AppTheme {
  final themeData = ThemeData(
    primaryColor: AppColors.primary,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      headlineLarge:
          TextStyle(fontSize: 24.sp, height: 1.5, fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(fontSize: 18.sp, height: 1.5),
      titleMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        height: 1.6,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
        height: 1.6,
      ),
      displaySmall: TextStyle(fontSize: 12.sp, height: 1.5),
    ),
  );
}
