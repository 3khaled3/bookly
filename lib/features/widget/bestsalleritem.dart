import 'package:bookly/core/methods.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../models/bookmodel/bookmodel.dart';


// ignore: camel_case_types
class bestsaller extends StatelessWidget {
  const bestsaller({super.key, required this.book});

  final Bookmodel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(navegat.bookdetils,extra: book);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 30),
        child: SizedBox(
          height: 130,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.7 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          book.volumeInfo!.imageLinks!.thumbnail!),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .6,
                      child: Text(
                        book.volumeInfo!.title!,
                        maxLines: 2,
                        textScaleFactor: .9,
                        overflow: TextOverflow.ellipsis,
                        textWidthBasis: TextWidthBasis.longestLine,
                        style: const TextStyle(
                          fontFamily: "GT Sectra Fine Regular",
                          fontSize: 27,
                          letterSpacing: 1.2,
                          color: Color.fromARGB(255, 243, 243, 243),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      book.volumeInfo!.authors![0],
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xff5B6375),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Row(
                        children: const [
                          Text(
                            " Free",
                            overflow: TextOverflow.ellipsis,
                            textWidthBasis: TextWidthBasis.longestLine,
                            style: TextStyle(
                              // fontFamily:"GT Sectra Fine Regular" ,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 243, 243, 243),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.star_purple500_outlined,
                            color: Colors.yellow,
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
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
