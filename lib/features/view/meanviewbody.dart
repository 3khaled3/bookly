import 'package:bookly/core/constant.dart';
import 'package:bookly/core/methods.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

// ignore: camel_case_types
class meanviewbody extends StatefulWidget {
  const meanviewbody({super.key});

  @override
  State<meanviewbody> createState() => _meanviewbodyState();
}

// ignore: camel_case_types
class _meanviewbodyState extends State<meanviewbody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
     GoRouter.of(context).push(navegat.homeViewRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Center(
      child: Image.asset(assetdata.logo),
    );
  }
}
