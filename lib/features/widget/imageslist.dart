import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/management/bookemagecubit/bookimage_cubit.dart';
import 'bookimag.dart';

// ignore: camel_case_types
class imageslist extends StatelessWidget {
  const imageslist({super.key, this.width, this.padding});
  final double? width;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width ?? MediaQuery.of(context).size.height * .3,
      child: BlocBuilder<BookimageCubit, BookimageState>(
        builder: (context, state) {
          if (state is Bookimagesuccess) {
            return ListView.builder(
              itemCount: BlocProvider.of<BookimageCubit>(context).books.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding ?? 10),
                  child: bookimagslist(
                      book: (BlocProvider.of<BookimageCubit>(context)
                          .books)[index]),
                );
              },
            );
          } else {
            return SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
