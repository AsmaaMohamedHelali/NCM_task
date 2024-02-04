import 'package:flutter/material.dart';
import 'package:ncm/auth/widgets/login_page_view.dart';
import 'package:ncm/common_components/app_background.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/size_config/app_size_config.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
          child: Center(
        child: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.symmetric(
                  vertical: AppSizeConfig.height(context: context, pixels: 90),
                  horizontal:
                      AppSizeConfig.width(context: context, pixels: 16)),
              padding: EdgeInsets.symmetric(
                  vertical: AppSizeConfig.height(context: context, pixels: 16),
                  horizontal:
                      AppSizeConfig.width(context: context, pixels: 16)),
              decoration: BoxDecoration(
                color: AppColors.lightWhite,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const LoginPageView()),
        ),
      )),
    );
  }
}
