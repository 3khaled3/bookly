import 'package:bookly/core/methods.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../models/bookmodel/bookmodel.dart';


// ignore: camel_case_types
class bookimagslist extends StatelessWidget {
  const bookimagslist({super.key, required this.book});
  
  final Bookmodel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(navegat.bookdetils,extra: book);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
            errorWidget: (context, url, error) => const Icon(
              Icons.error,
            ),
          ),
        ),
      ),
    );
  }
}
