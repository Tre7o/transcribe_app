import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  const CardBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.grey),
      ),
    );
  }
}
