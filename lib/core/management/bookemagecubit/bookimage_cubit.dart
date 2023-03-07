import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../models/bookmodel/bookmodel.dart';
import '../../repo/homeRepo.dart';

part 'bookimage_state.dart';

class BookimageCubit extends Cubit<BookimageState> {
  BookimageCubit(this.homerepo) : super(BookimageInitial());
  final Homerepo homerepo;
  List<Bookmodel> books = [];
  getimage() async {
    emit(Bookimageloadding());
    var responsee = await homerepo.fetchbookimag();
    // ignore: avoid_print
    print("respose$responsee");
    responsee.fold((errorr) {
      // ignore: avoid_print
      print("error get image");
      emit(Bookimagefail());
    }, (success) {
      for (var i = 0; i < success.length; i++) {
        books.add(success[i]);
      }

      emit(Bookimagesuccess());
    });
  }
}
