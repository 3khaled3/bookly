// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../../models/bookmodel/bookmodel.dart';
import '../widget/bookdetailsbuttoms.dart';
import '../widget/bookdetailsinfo.dart';
import '../widget/bookdetilsappbar.dart';
import '../widget/bookdetilsimag.dart';
import '../widget/imageslist.dart';


class bookdetilsbody extends StatelessWidget {
  const bookdetilsbody({super.key, required this.book});
final Bookmodel book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const bookdetailsappbar(),
                 bookdetailsimag(image:book.volumeInfo!.imageLinks!.thumbnail!),
                 bookdetailsinfo(book: book),
                const SizedBox(
                  height: 23,
                ),
                const bookdetailsbuttom(),
                const SizedBox(
                  height: 23,
                ),
                Row(
                  children: const [
                    Text(
                      "You can also like",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          imageslist(
              width: MediaQuery.of(context).size.width * .25, padding: 5),
          const SizedBox(height: 40),
        ],
      ),
    ));
  }
}
