import 'package:flutter/material.dart';
import 'package:ncm/home/services/widgets/applicant_details_item.dart';
import 'package:ncm/home/services/widgets/contact_details_item.dart';
import 'package:ncm/home/services/widgets/national_address_item.dart';
import 'package:ncm/home/services/widgets/station_details_Item.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/size_config/app_size_config.dart';

class RequestSections extends StatelessWidget {
  const RequestSections({super.key});

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
        color: AppColors.weatherRequestBGColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StationDetailsItem(),
          ApplicantDetailsItem(),
          NationalAddressItem(),
          ContactDetailsItem(),
        ],
      ),
    );
  }
}
