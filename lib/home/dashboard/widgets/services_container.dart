import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncm/common_components/app_space.dart';
import 'package:ncm/home/controller/home_controller/home_cubit.dart';
import 'package:ncm/home/dashboard/widgets/services_item.dart';
import 'package:ncm/utils/extensions/app_extensions.dart';
import 'package:ncm/utils/images/app_images.dart';

class ServicesContainer extends StatelessWidget {
  const ServicesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              context.localization.services,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              context.localization.viewAll,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                  ),
            )
          ],
        ),
        const AppSpace(
          height: 16,
        ),
        ServicesItem(
          onTap: () {
            homeCubit.changeLandingTab(1);
          },
          image: AppImages.climateDataRequest,
          title: context.localization.climateDataRequest,
        ),
        const AppSpace(
          height: 10,
        ),
        ServicesItem(
          onTap: () {},
          image: AppImages.reportRequest,
          title: context.localization.requestWeatherReport,
        ),
        const AppSpace(
          height: 10,
        ),
        ServicesItem(
          onTap: () {},
          image: AppImages.forecastRequest,
          title: context.localization.freeForecastRequest,
        ),
      ],
    );
  }
}
