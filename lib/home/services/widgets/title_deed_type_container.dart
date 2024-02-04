import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncm/common_components/app_space.dart';
import 'package:ncm/common_components/horizontal_checkbox_group.dart';
import 'package:ncm/home/controller/service_controller/service_cubit.dart';
import 'package:ncm/home/controller/service_controller/service_state.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/extensions/app_extensions.dart';

class TitleDeedTypeContainer extends StatelessWidget {
  const TitleDeedTypeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final servicesCubit = context.read<ServicesCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.localization.titleDeedType,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColors.white,
              ),
        ),
        const AppSpace(
          height: 10,
        ),
        BlocBuilder<ServicesCubit,ServicesState>(
          builder: (context, snapshot) {
            return HorizontalCheckBoxGroup(
              currentIndex: servicesCubit.selectedTitleType,
              checkList: [
                context.localization.ownership,
                context.localization.rent,
              ],
              onTap: (index) {
                servicesCubit.selectedTitleType= index;
              },
            );
          }
        ),
        const AppSpace(
          height: 10,
        ),
      ],
    );
  }
}
