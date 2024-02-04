import 'package:flutter/material.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/size_config/app_size_config.dart';

class ServicesItem extends StatelessWidget {
  final String? title;
  final String? image;
  final void Function() onTap;

  const ServicesItem({this.image, this.title, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.weatherBGColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppSizeConfig.width(context: context, pixels: 16),
              vertical: AppSizeConfig.height(context: context, pixels: 8)),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal:
                        AppSizeConfig.width(context: context, pixels: 16),
                    vertical:
                        AppSizeConfig.height(context: context, pixels: 16)),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  '$image',
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                '$title',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
