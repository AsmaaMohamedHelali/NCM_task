import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ncm/utils/colors/app_colors.dart';

class CelsiusText extends StatelessWidget {
  final String text;

  const CelsiusText({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.w300,
                fontSize: 46.sp),
          ),
          Positioned(
            top: 1.0,
            right: 1.0, // Adjust the position as needed
            child: Text(
              '°',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w300,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
