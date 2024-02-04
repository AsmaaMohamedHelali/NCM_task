import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:ncm/auth/pages/login_screen.dart';
import 'package:ncm/home/controller/home_controller/home_cubit.dart';
import 'package:ncm/home/home_screen.dart';
import 'package:ncm/routing/app_routes.dart';

final List<GetPage> routes = [
  GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
  GetPage(
      name: AppRoutes.home,
      page: () => BlocProvider(
            create: (_) => HomeCubit(),
            child: const HomeScreen(),
          )),
];
