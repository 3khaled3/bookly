import 'package:bookly/core/management/bestsaller%20cupit/bestsiller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bestsalleritem.dart';


// ignore: camel_case_types
class bestsallerlist extends StatelessWidget {
  const bestsallerlist({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestsillerCubit, BestsillerState>(
      builder: (context, state) {
        if (state is Bestsillersuccess) {
          return ListView.builder(
            
            shrinkWrap: true,
              itemCount:BlocProvider.of<BestsillerCubit>(context).books.length ,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return bestsaller(
                  book: BlocProvider.of<BestsillerCubit>(context).books[index],
                );
              },
              padding: const EdgeInsets.all(0));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
