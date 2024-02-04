import 'package:ncm/utils/app_enums/home_enums.dart';

abstract class HomeNavigationState {
  final HomeTabs tab;

  const HomeNavigationState(this.tab);
}

class HomeNavigationInitial extends HomeNavigationState {
  const HomeNavigationInitial() : super(HomeTabs.dashboard);
}

class HomeNavigationChanged extends HomeNavigationState {
  const HomeNavigationChanged(HomeTabs tab) : super(tab);
}
