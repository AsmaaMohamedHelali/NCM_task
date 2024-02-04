import 'package:flutter/material.dart';
import 'package:ncm/common_components/app_space.dart';
import 'package:ncm/common_components/app_text_field.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/extensions/app_extensions.dart';

class UserNameField extends StatelessWidget {
  const UserNameField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.localization.username,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.textColor,
              ),
        ),
        const AppSpace(
          height: 4,
        ),
        AppTextField(
          placeholder: context.localization.username,
          controller: usernameController,
        )
      ],
    );
  }
}
