// ignore_for_file: file_names

import 'package:dartz/dartz.dart';

import '../../models/bookmodel/bookmodel.dart';
import '../apiservices.dart';
import '../error/error.dart';
// import 'package:yourbok/models/bookmodel/bookmodel.dart';


abstract class Homerepo {
  Future<Either<fail, List<Bookmodel>>> fetchbookimag();
  Future<Either<fail, List<Bookmodel>>> fetchbestsallerbook();
}

// ignore: camel_case_types
class homerepoimp implements Homerepo {
  final apiservices api;
 homerepoimp(this.api);
  @override
  Future<Either<fail, List<Bookmodel>>> fetchbestsallerbook() async {
    try {
  var data = await api.get(
      "volumes?Filtering=free-ebooks&Sorting=newest%20&q=computer%20science&fbclid=IwAR03RbZEN86St-WmHTvzEWZR-16yyJEjGndvejglV_A-QQQrZP8sXaPHe8M");
  
  List<Bookmodel> books = [];
  for (var item in data["items"]) {
    books.add(Bookmodel.fromJson(item));
  }
  return Right(books);
} on Exception catch (e) {
  return left(fail(e.toString()));

}
    // throw UnimplementedError();
  }

  @override
  Future<Either<fail, List<Bookmodel>>> fetchbookimag()async {
    
     try {
  var data = await api.get(
      "volumes?Filtering=free-ebooks&%20&q=flutter%20science&fbclid=IwAR03RbZEN86St-WmHTvzEWZR-16yyJEjGndvejglV_A-QQQrZP8sXaPHe8M");
  
  List<Bookmodel> books = [];
  for (var item in data["items"]) {
    books.add(Bookmodel.fromJson(item));
  }
  return Right(books);
} on Exception catch (e) {
  return left(fail(e.toString()));
  
}
  }
}
