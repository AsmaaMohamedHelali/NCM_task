import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ncm/auth/pages/login_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ncm/routing/app_routes.dart';
import 'package:ncm/routing/routing_pages.dart';
import 'package:ncm/utils/theme/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          initialRoute: AppRoutes.login,
          getPages: routes,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            AppLocalizations.delegate, // Add this line
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'), // English
            Locale('ar'), // Spanish
          ],
          title: 'NCM',
          theme: AppStyle().theme,
          home: child,
        );
      },
      child: const LoginScreen(),
    );
  }
}
