import 'package:flutter/material.dart';
import 'package:ncm/utils/size_config/app_size_config.dart';

class AppSpace extends StatelessWidget {
  final int height;
  final int width;

  const AppSpace({this.width = 0, this.height = 0, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizeConfig.height(context: context, pixels: height),
      width: AppSizeConfig.width(context: context, pixels: width),
    );
  }
}
