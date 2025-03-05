import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:zaker/core/utils/app_colors.dart';
import 'package:zaker/core/utils/app_routes.dart';
import 'package:zaker/features/salah/presentation/manager/athan_cubit/athan_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AthanCubit(),
      child: MaterialApp.router(
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
      ),
    );
  }
}
