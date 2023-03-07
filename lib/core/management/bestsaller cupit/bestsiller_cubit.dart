import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../models/bookmodel/bookmodel.dart';
import '../../repo/homeRepo.dart';

part 'bestsiller_state.dart';

class BestsillerCubit extends Cubit<BestsillerState> {
  BestsillerCubit(this.homerepo) : super(BestsillerInitial());
  final Homerepo homerepo;
  List<Bookmodel> books = [];
  getbestsaller() async {
    emit(Bestsillerloadding());
    var responsee = await homerepo.fetchbestsallerbook();
    responsee.fold((errorr) {
      // ignore: avoid_print
      print("error get image");
      emit(Bestsillerfail());
    }, (success) {
      books.addAll(success);
      emit(Bestsillersuccess());
    });
  }
}
