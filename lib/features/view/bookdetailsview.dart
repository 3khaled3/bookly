// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';


import '../../models/bookmodel/bookmodel.dart';
import 'bookdetilsbody.dart';

// ignore: camel_case_types
class bookdetilsview extends StatelessWidget {
  const bookdetilsview({super.key, required this.book});
final Bookmodel book;
  @override
  Widget build(BuildContext context) {
    return  bookdetilsbody(book: book,);
  }
}
