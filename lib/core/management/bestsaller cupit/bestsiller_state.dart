part of 'bestsiller_cubit.dart';

abstract class BestsillerState extends Equatable {
  const BestsillerState();

  @override
  List<Object> get props => [];
}

class BestsillerInitial extends BestsillerState {}

class Bestsillersuccess extends BestsillerState {}

class Bestsillerfail extends BestsillerState {}

class Bestsillerloadding extends BestsillerState {}
