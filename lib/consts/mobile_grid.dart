import 'package:flutter/material.dart';

import '../utils/card_box.dart';

class MobileGrid extends StatelessWidget {
  const MobileGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: SizedBox(
        width: double.infinity,
        child: GridView.builder(
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return const CardBox();
            }),
      ),
    );
  }
}
