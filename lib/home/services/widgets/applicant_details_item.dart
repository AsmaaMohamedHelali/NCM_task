import 'package:flutter/material.dart';
import 'package:ncm/common_components/expansion_item.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/extensions/app_extensions.dart';

class ApplicantDetailsItem extends StatelessWidget {
  const ApplicantDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionItem(
          title: context.localization.applicantDetails,
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
