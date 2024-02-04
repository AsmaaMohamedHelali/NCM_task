import 'package:flutter/material.dart';
import 'package:ncm/common_components/app_button.dart';
import 'package:ncm/common_components/app_space.dart';
import 'package:ncm/home/home_app_bar.dart';
import 'package:ncm/home/services/widgets/request_sections.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/extensions/app_extensions.dart';
import 'package:ncm/utils/size_config/app_size_config.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

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
                  context.localization.apply,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: AppColors.white,
                      ),
                ),
                const AppSpace(
                  height: 8,
                ),
                Text(
                  context.localization.climateDataRequestHeader,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.white,
                      ),
                ),
                const RequestSections(),
                const AppSpace(
                  height: 16,
                ),
                Center(
                  child: Text(
                    context.localization.termsAndConditions,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.white,
                        ),
                  ),
                ),
                const AppSpace(
                  height: 16,
                ),
                AppButton(
                  onTap: () {},
                  child: Text(context.localization.submit,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: AppColors.white)),
                ),
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
