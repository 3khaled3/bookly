import 'package:flutter/material.dart';

import '../widget/appbar.dart';
import '../widget/bestsallerlist.dart';
import '../widget/imageslist.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              appBar(),
              imageslist(),
              Padding(
                padding: EdgeInsets.only(top: 40, right: 20, left: 20),
                child: Text("Best saller",
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 24)),
              ),
              SizedBox(
                height: 30,
              ),
              // bestsaller()
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: bestsallerlist(),
        )
      ],
    ));
  }
}
