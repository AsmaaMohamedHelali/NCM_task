import 'package:flutter/material.dart';
import 'package:ncm/auth/widgets/password_field.dart';
import 'package:ncm/auth/widgets/username_field.dart';
import 'package:ncm/common_components/app_button.dart';
import 'package:ncm/common_components/app_space.dart';
import 'package:ncm/routing/app_routes.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/extensions/app_extensions.dart';
import 'package:ncm/utils/images/app_images.dart';
import 'package:get/get.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          AppImages.appFullLogo,
        ),
        Text(
          context.localization.login,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: AppColors.textColor,
              ),
        ),
        const AppSpace(
          height: 8,
        ),
        const UserNameField(),
        const AppSpace(
          height: 8,
        ),
        const PasswordField(),
        const AppSpace(
          height: 16,
        ),
        AppButton(
          onTap: () {
            Get.toNamed(
              AppRoutes.home,
            );
          },
          child: Text(context.localization.login,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: AppColors.white)),
        ),
        const AppSpace(
          height: 20,
        ),
        Text(
          context.localization.forgetPassword,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.textColor,
              ),
        ),
        const AppSpace(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.localization.notAMember,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.babyBlue,
                  ),
            ),
            Text(
              context.localization.register,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.boldBlue,
                  ),
            ),
          ],
        ),
        const AppSpace(
          height: 16,
        ),
      ],
    );
  }
}
