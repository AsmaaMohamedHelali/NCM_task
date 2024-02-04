import 'package:flutter/material.dart';
import 'package:ncm/common_components/app_space.dart';
import 'package:ncm/common_components/app_text_field.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/extensions/app_extensions.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});


  @override
  Widget build(BuildContext context) {
    final TextEditingController passwordController = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.localization.password,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.textColor,
              ),
        ),
        const AppSpace(
          height: 4,
        ),
        AppTextField(
          controller: passwordController,
          obscureText: true,
          placeholder: context.localization.password,
        )
      ],
    );
  }
}
