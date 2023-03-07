import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: camel_case_types
class searchview extends StatelessWidget {
  const searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
          child: TextFormField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: "Search",
              suffixIcon:
                  IconButton(onPressed: () {
                    GoRouter.of(context).pop();
                  }, icon: const Icon(Icons.search)),
            ),
          ),
        ),
      ),
    );
  }
}
