import 'package:flutter/material.dart';

class BoxTile extends StatelessWidget {
  const BoxTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        color: Colors.grey[300],
      ),
    );
  }
}
