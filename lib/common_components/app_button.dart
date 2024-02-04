import 'package:flutter/material.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/size_config/app_size_config.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.buttonColor,
          backgroundColor: AppColors.buttonColor,
          maximumSize: Size(
            AppSizeConfig.width(context: context, pixels: 750),
            AppSizeConfig.height(context: context, pixels: 44),
          ),
          padding: EdgeInsets.zero,
          elevation: 0,
          minimumSize: Size(AppSizeConfig.width(context: context, pixels: 234),
              AppSizeConfig.height(context: context, pixels: 44)),
          textStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.white,
              ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        onPressed: onTap,
        child: Align(
          child: Center(
            child: FittedBox(child: child),
          ),
        ));
  }
}
