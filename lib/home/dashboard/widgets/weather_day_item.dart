import 'package:flutter/material.dart';
import 'package:ncm/common_components/app_space.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/size_config/app_size_config.dart';

class WeatherDayItem extends StatelessWidget {
  final String? day;
  final String? image;

  const WeatherDayItem({this.image, this.day, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              '$image',
              width: AppSizeConfig.width(context: context, pixels: 35),
              height: AppSizeConfig.height(context: context, pixels: 35),
            ),
            Text(
              '$day',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.weatherCurrentDateColor,
                  ),
            ),
          ],
        ),
        const AppSpace(
          width: 16,
        )
      ],
    );
  }
}
