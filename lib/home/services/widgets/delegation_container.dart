import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncm/common_components/app_space.dart';
import 'package:ncm/common_components/app_text_field.dart';
import 'package:ncm/home/controller/service_controller/service_cubit.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/extensions/app_extensions.dart';
import 'package:ncm/utils/images/app_images.dart';

class DelegationContainer extends StatelessWidget {
  const DelegationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final servicesCubit = context.read<ServicesCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.localization.delegation,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColors.white,
              ),
        ),
        const AppSpace(
          height: 10,
        ),
        AppTextField(
          placeholder: context.localization.delegateName,
          controller: servicesCubit.delegateNameField,
          backgroundColor: AppColors.dividerColor,
          labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColors.white,
              ),
        ),
        const AppSpace(
          height: 10,
        ),
        AppTextField(
          placeholder: context.localization.idNumber,
          controller: servicesCubit.delegateIdField,
          backgroundColor: AppColors.dividerColor,
          labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColors.white,
              ),
        ),
        const AppSpace(
          height: 10,
        ),
        AppTextField(
          placeholder: context.localization.authorizationReferenceNumber,
          controller: servicesCubit.referenceNumField,
          backgroundColor: AppColors.dividerColor,
          labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColors.white,
              ),
        ),
        const AppSpace(
          height: 10,
        ),
        AppTextField(
          placeholder: context.localization.signatureDigital,
          controller: servicesCubit.signatureDigitalField,
          suffixIcon: Image.asset(AppImages.attachment),
          backgroundColor: AppColors.dividerColor,
          labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColors.white,
              ),
        ),
        const AppSpace(
          height: 10,
        ),
        AppTextField(
          placeholder: context.localization.uploadDocument,
          controller: servicesCubit.uploadDocumentField,
          suffixIcon: Image.asset(AppImages.attachment),
          backgroundColor: AppColors.dividerColor,
          labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColors.white,
              ),
        ),
        const AppSpace(
          height: 10,
        ),
      ],
    );
  }
}
