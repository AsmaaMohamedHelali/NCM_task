import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncm/home/controller/home_controller/home_state.dart';
import 'package:ncm/home/controller/service_controller/service_cubit.dart';
import 'package:ncm/home/dashboard/pages/dashboard_screen.dart';
import 'package:ncm/home/services/pages/service_screen.dart';
import 'package:ncm/utils/app_enums/home_enums.dart';

class HomeCubit extends Cubit<HomeNavigationState> {
  HomeCubit() : super(const HomeNavigationInitial());

  final _tabs = {
    HomeTabs.dashboard: const DashBoardScreen(),
    HomeTabs.services: BlocProvider(
      create: (context) => ServicesCubit(),
      child: const ServiceScreen(),
    ),
    HomeTabs.settings: Container(),
    HomeTabs.more: Container(),
  };

  int getIndex() {
    return tabs.keys.toList().indexOf(state.tab);
  }

  Map<HomeTabs, Widget> get tabs => _tabs;

  changeLandingTab(int index) {
    final tab = _tabs.keys.elementAt(index);
    emit(HomeNavigationChanged(tab));
  }
}
