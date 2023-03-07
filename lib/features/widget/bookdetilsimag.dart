import 'package:flutter/material.dart';

// ignore: camel_case_types
class bookdetailsimag extends StatelessWidget {
  const bookdetailsimag({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35),
      child: SizedBox(
              width: MediaQuery.of(context).size.width * .45,
              child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  image:  DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.fill,
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
          
        ),
            ),
    );
  }
}