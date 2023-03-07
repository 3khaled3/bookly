import 'package:bookly/core/constant.dart';
import 'package:bookly/core/methods.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/apiservices.dart';
import 'core/management/bestsaller cupit/bestsiller_cubit.dart';
import 'core/management/bookemagecubit/bookimage_cubit.dart';
import 'core/repo/homeRepo.dart';


void main() {
  runApp(const yourbook());
}

// ignore: camel_case_types
class yourbook extends StatelessWidget {
  const yourbook({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BestsillerCubit(homerepoimp(apiservices(Dio())))..getbestsaller(),
        ),
        BlocProvider(
          create: (context) => BookimageCubit(homerepoimp(apiservices(Dio())))..getimage(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: navegat.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: scaffoldBackground),
      ),
    );
  }
}
