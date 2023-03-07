import 'package:bookly/core/constant.dart';
import 'package:bookly/core/methods.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';


// ignore: camel_case_types
class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only( right: 20, left: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              assetdata.logo,
              height: 19,
            ),
            IconButton(onPressed: () {
              GoRouter.of(context).push(navegat.searchViewRoute);
            }, icon: const Icon(Icons.search)),
          ],
        ),
      ),
    );
  }
}
