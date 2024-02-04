import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ncm/common_components/app_space.dart';
import 'package:ncm/utils/size_config/app_size_config.dart';

class ServiceContainer extends StatelessWidget {
  final String? image;
  final String? serviceTitle;
  final String? serviceCount;

  const ServiceContainer(
      {this.image, this.serviceTitle, this.serviceCount, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: AssetImage('$image'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppSizeConfig.width(context: context, pixels: 10),
              vertical: AppSizeConfig.height(context: context, pixels: 16)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  '$serviceCount',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontSize: 34.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const AppSpace(
                height: 20,
              ),
              FittedBox(
                child: Text(
                  '$serviceTitle',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
