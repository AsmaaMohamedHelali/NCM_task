import 'package:flutter/material.dart';
import 'package:ncm/common_components/app_space.dart';
import 'package:ncm/home/dashboard/widgets/services_type_container.dart';
import 'package:ncm/home/dashboard/widgets/services_container.dart';
import 'package:ncm/home/dashboard/widgets/weather_container.dart';
import 'package:ncm/home/home_app_bar.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/extensions/app_extensions.dart';
import 'package:ncm/utils/images/app_images.dart';
import 'package:ncm/utils/size_config/app_size_config.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizeConfig.width(context: context, pixels: 16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppBar(),
                const AppSpace(
                  height: 16,
                ),
                Text(
                  context.localization.hi,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: AppColors.white,
                      ),
                ),
                const AppSpace(
                  height: 8,
                ),
                Text(
                  context.localization.welcome,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.white,
                      ),
                ),
                const WeatherContainer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ServiceContainer(
                      image: AppImages.serviceApplied,
                      serviceTitle: context.localization.serviceApplied,
                      serviceCount: '53',
                    ),
                    const AppSpace(
                      width: 8,
                    ),
                    ServiceContainer(
                      image: AppImages.serviceApproved,
                      serviceTitle: context.localization.serviceApproved,
                      serviceCount: '33',
                    ),
                    const AppSpace(
                      width: 8,
                    ),
                    ServiceContainer(
                      image: AppImages.serviceRejected,
                      serviceTitle: context.localization.serviceRejected,
                      serviceCount: '20',
                    ),
                  ],
                ),
                const AppSpace(
                  height: 16,
                ),
                const ServicesContainer(),
                const AppSpace(
                  height: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
