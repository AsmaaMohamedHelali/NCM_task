import 'package:flutter/material.dart';
import 'package:ncm/common_components/app_space.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/images/app_images.dart';

class CheckBoxItem extends StatelessWidget {
  final String title;
  final bool value;

  const CheckBoxItem({required this.title, this.value = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          child: Center(
            child: Image.asset(
              value
                  ? AppImages.checkboxChecked
                  : AppImages.checkboxUnChecked,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const AppSpace(width: 8),
        Flexible(
          child: Text(
            title,
            style:
            Theme.of(context).textTheme.titleSmall?.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
