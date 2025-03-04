import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:zaker/features/home/presentation/views/home_view.dart';
import 'package:zaker/features/home/presentation/views/nav_bar_view.dart';
import 'package:zaker/features/home/presentation/views/quraan_view.dart';

abstract class AppRoutes {
  static const quraanView = '/quraanView';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return CustomNavBar();
        },
      ),
      GoRoute(
        path: quraanView,
        builder: (BuildContext context, GoRouterState state) {
          return QuraanView();
        },
      ),
    ],
  );
}
