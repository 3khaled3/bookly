import 'package:flutter/material.dart';

import 'custombuttom.dart';

// ignore: camel_case_types
class bookdetailsbuttom extends StatelessWidget {
  const bookdetailsbuttom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Expanded(
                child: custombuttom(
                  order: () {},
                  text: 'Free',
                  buttombackground: Colors.white,
                  textcolor: Colors.black,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                ),
              ),
              Expanded(
                child: custombuttom(
                  text: "Preview",
                  order: () {},
                  buttombackground: const Color(0xffEF8262),
                  textcolor: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
              ),
            ],
          );
  }
}