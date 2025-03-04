import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
      supportedLocales: const [Locale('ar')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.router,
      theme: ThemeData.light(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: AppColors.scaffoldColor,
        textTheme: ThemeData.light().textTheme.apply(fontFamily: 'me_quran'),
      ),
    );
  }
}
