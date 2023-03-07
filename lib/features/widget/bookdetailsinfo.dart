import 'package:flutter/material.dart';
// ignore: unused_import, implementation_imports
import 'package:flutter/src/widgets/container.dart';

import '../../models/bookmodel/bookmodel.dart';


// ignore: camel_case_types
class bookdetailsinfo extends StatelessWidget {
  const bookdetailsinfo({super.key, required this.book});
final Bookmodel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
          book.volumeInfo!.title!,
          maxLines: 2,
          // textScaleFactor: .9,
          overflow: TextOverflow.ellipsis,
          textWidthBasis: TextWidthBasis.longestLine,
          style: const TextStyle(
            fontFamily: "GT Sectra Fine Regular",
            fontSize: 30,
            letterSpacing: 1.2,
            color: Color.fromARGB(255, 243, 243, 243),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
         Text(
          book.volumeInfo!.authors![0],
          style: const TextStyle(
            fontSize: 22,
            color: Color(0xff5B6375),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.star_purple500_outlined,
              color: Colors.yellow,
              size: 18,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "0",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 243, 243, 243),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "(0)",
              style: TextStyle(
                  // fontFamily:"GT Sectra Fine Regular" ,
                  fontSize: 18,
                  color: Color(0xff5B6375)),
            ),
          ],
        )
      ],
    );
  }
}
