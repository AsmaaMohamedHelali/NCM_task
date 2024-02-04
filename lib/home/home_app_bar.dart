import 'package:flutter/material.dart';
import 'package:ncm/common_components/app_space.dart';
import 'package:ncm/utils/images/app_images.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(AppImages.appLogo),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppImages.search),
            const AppSpace(
              width: 16,
            ),
            Image.asset(AppImages.notification),
          ],
        ),
      ],
    );
  }
}
