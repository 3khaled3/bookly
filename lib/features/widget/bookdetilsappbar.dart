import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: camel_case_types
class bookdetailsappbar extends StatelessWidget {
  const bookdetailsappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){GoRouter.of(context).pop();}, icon: const Icon(Icons.close)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined)),
              ],
            ),
          );
  }
}