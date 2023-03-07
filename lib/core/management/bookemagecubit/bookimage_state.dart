part of 'bookimage_cubit.dart';

abstract class BookimageState extends Equatable {
  const BookimageState();

  @override
  List<Object> get props => [];
}

class BookimageInitial extends BookimageState {}

class Bookimagesuccess extends BookimageState {}

class Bookimageloadding extends BookimageState {}

class Bookimagefail extends BookimageState {}
