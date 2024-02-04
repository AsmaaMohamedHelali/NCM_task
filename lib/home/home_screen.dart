import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ncm/common_components/app_background.dart';
import 'package:ncm/home/controller/home_controller/home_cubit.dart';
import 'package:ncm/home/controller/home_controller/home_state.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/extensions/app_extensions.dart';
import 'package:ncm/utils/size_config/app_size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeCubit _homeCubit;

  @override
  void initState() {
    super.initState();
    _homeCubit = context.read<HomeCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeNavigationState>(
        builder: (context, state) {
      return Scaffold(
        extendBody: true,
        body: AppBackground(
          child: _homeCubit.tabs[_homeCubit.state.tab]!,
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizeConfig.width(context: context, pixels: 2),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(35), topRight: Radius.circular(35)),
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                elevation: 8,
                backgroundColor: AppColors.white,
                iconSize: 20.0,
                selectedIconTheme: const IconThemeData(size: 22.0),
                selectedItemColor: AppColors.navSelectedColor,
                unselectedItemColor: AppColors.navUnSelectedColor,
                selectedFontSize: 12.sp,
                unselectedFontSize: 12.sp,
                currentIndex: _homeCubit.getIndex(),
                onTap: (index) {
                  _homeCubit.changeLandingTab(index);
                },
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(
                          top: AppSizeConfig.height(
                              context: context, pixels: 8)),
                      child: const Icon(Icons.home_outlined),
                    ),
                    label: context.localization.dashboard,
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(
                          top: AppSizeConfig.height(
                              context: context, pixels: 8)),
                      child: const Icon(Icons.file_present),
                    ),
                    label: context.localization.services,
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(
                          top: AppSizeConfig.height(
                              context: context, pixels: 8)),
                      child: const Icon(Icons.settings),
                    ),
                    label: context.localization.settings,
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(
                          top: AppSizeConfig.height(
                              context: context, pixels: 8)),
                      child: const Icon(Icons.more_horiz),
                    ),
                    label: context.localization.more,
                  ),
                ]),
          ),
        ),
      );
    });
  }
}
