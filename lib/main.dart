import 'package:flutter/material.dart';
import 'package:zaker/core/utils/app_colors.dart';
import 'package:zaker/core/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.router,
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(scaffoldBackgroundColor: AppColors.scaffoldColor),
    );
  }
}
