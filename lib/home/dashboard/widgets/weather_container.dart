import 'package:flutter/material.dart';
import 'package:ncm/home/dashboard/widgets/tempreture_celsious_degree.dart';
import 'package:ncm/home/dashboard/widgets/weather_day_item.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/images/app_images.dart';
import 'package:ncm/utils/size_config/app_size_config.dart';

class WeatherContainer extends StatelessWidget {
  const WeatherContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
          vertical: AppSizeConfig.height(context: context, pixels: 16)),
      padding: EdgeInsets.symmetric(
          vertical: AppSizeConfig.height(context: context, pixels: 8),
          horizontal: AppSizeConfig.width(context: context, pixels: 16)),
      decoration: BoxDecoration(
        color: AppColors.weatherBGColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Wdnesday, 2 June 2021',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.weatherCurrentDateColor,
                ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            'Riyadh, Saudi Arabia',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.weatherLocationColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 8,
          ),
          Image.asset(AppImages.weatherMainIcon),
          const SizedBox(
            height: 4,
          ),
          Text(
            'Partially Cloudy',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.weatherCurrentDateColor,
                ),
          ),
          const SizedBox(
            height: 8,
          ),
          const CelsiusText(text: '27'),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: AppSizeConfig.width(context: context, pixels: 70),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                WeatherDayItem(
                  image: AppImages.sunnyWeather,
                  day: 'MON',
                ),
                WeatherDayItem(
                  image: AppImages.sunnyWeather,
                  day: 'TUE',
                ),
                WeatherDayItem(
                  image: AppImages.partiallyCloudyWeather,
                  day: 'WED',
                ),
                WeatherDayItem(
                  image: AppImages.cloudyWeather,
                  day: 'THU',
                ),
                WeatherDayItem(
                  image: AppImages.rainingWeather,
                  day: 'FRI',
                ),
                WeatherDayItem(
                  image: AppImages.thunderWeather,
                  day: 'SAT',
                ),
                WeatherDayItem(
                  image: AppImages.thunderWeather,
                  day: 'Sat',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
