// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../features/view/bookdetailsview.dart';
import '../features/view/home_view.dart';
import '../features/view/meanview.dart';
import '../features/view/searchview.dart';
import '../models/bookmodel/bookmodel.dart';
// import 'package:yourbook/features/view/bookdetmodel.dart';

abstract class navegat {
  static const homeViewRoute = "/homeview";
  static const meanViewRoute = "/";
  static const searchViewRoute = "/seachview";
  static const bookdetils = "/bookdetils";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const meanview(),
      ),
      GoRoute(
        path: homeViewRoute,
        // builder: (context, state) => const HomeView(),
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: const HomeView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              ScaleTransition(scale: animation, child: child),
        ),
      ),
      GoRoute(
          path: bookdetils,
          builder: (context, state) {
            final book = state.extra as Bookmodel;
            return bookdetilsview(book: book);
          }),
      GoRoute(
        path: searchViewRoute,
        builder: (context, state) => const searchview(),
      ),
    ],
  );
}
