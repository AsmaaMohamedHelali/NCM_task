import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncm/common_components/app_space.dart';
import 'package:ncm/common_components/app_text_field.dart';
import 'package:ncm/common_components/vertical_checbox_group.dart';
import 'package:ncm/common_components/expansion_item.dart';
import 'package:ncm/home/controller/service_controller/service_cubit.dart';
import 'package:ncm/home/controller/service_controller/service_state.dart';
import 'package:ncm/home/services/widgets/delegation_container.dart';
import 'package:ncm/home/services/widgets/title_deed_type_container.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/extensions/app_extensions.dart';
import 'package:ncm/utils/images/app_images.dart';

class StationDetailsItem extends StatelessWidget {
  const StationDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    final servicesCubit = context.read<ServicesCubit>();
    return Column(
      children: [
        ExpansionItem(
          title: context.localization.stationDetails,
          initiallyExpanded: true,
          children: [
            Column(
              children: [
                BlocBuilder<ServicesCubit,ServicesState>(
                  builder: (context, state) {
                    return VerticalCheckBoxGroup(
                      currentIndex: servicesCubit.selectedStationType,
                      checkList: [
                        context.localization.weatherStationUnderConstruction,
                        context.localization.listOfWeatherStations,
                      ],
                      onTap: (index) {
                        servicesCubit.selectedStationType= index;
                      },
                    );
                  }
                ),
                const AppSpace(
                  height: 10,
                ),
                AppTextField(
                  placeholder: context.localization.stationClassification,
                  controller: servicesCubit.stationClassificationField,
                  backgroundColor: AppColors.dividerColor,
                  labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: AppColors.white,
                      ),
                ),
                const AppSpace(
                  height: 10,
                ),
                AppTextField(
                  placeholder: context.localization.stationClass,
                  controller: servicesCubit.stationClassField,
                  backgroundColor: AppColors.dividerColor,
                  labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: AppColors.white,
                      ),
                ),
                const AppSpace(
                  height: 10,
                ),
                AppTextField(
                  placeholder: context.localization.proposedStationLocation,
                  controller: servicesCubit.proposedStationLocationField,
                  backgroundColor: AppColors.dividerColor,
                  labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: AppColors.white,
                      ),
                ),
                const AppSpace(
                  height: 10,
                ),
                AppTextField(
                  placeholder: context.localization.stationCoordinates,
                  controller: servicesCubit.stationCoordinatesField,
                  suffixIcon: Image.asset(AppImages.location),
                  backgroundColor: AppColors.dividerColor,
                  labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: AppColors.white,
                      ),
                ),
                const AppSpace(
                  height: 10,
                ),
                const TitleDeedTypeContainer(),
                const AppSpace(
                  height: 10,
                ),
                AppTextField(
                  placeholder: context.localization.stationTypes,
                  controller: servicesCubit.stationTypeField,
                  backgroundColor: AppColors.dividerColor,
                  suffixIcon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: AppColors.white,
                  ),
                  labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: AppColors.white,
                      ),
                ),
                const AppSpace(
                  height: 10,
                ),
                AppTextField(
                  placeholder: context.localization.stationAddress,
                  controller: servicesCubit.stationAddressField,
                  backgroundColor: AppColors.dividerColor,
                  maxLines: 6,
                  labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: AppColors.white,
                      ),
                ),
                const AppSpace(
                  height: 10,
                ),
                const DelegationContainer(),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Divider(
          color: AppColors.dividerColor,
        ),
        const SizedBox(
          height: 4,
        ),
      ],
    );
  }
}
