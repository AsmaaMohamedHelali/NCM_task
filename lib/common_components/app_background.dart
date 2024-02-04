import 'package:flutter/material.dart';
import 'package:ncm/utils/images/app_images.dart';

class AppBackground extends StatelessWidget {
  final Widget child;

  const AppBackground(
      {required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.appBackGround),
          // Replace with your image
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
