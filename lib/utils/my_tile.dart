import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[300],
        ),
        height: 65,
        child: ListTile(
          leading: const Icon(Icons.audio_file),
          title: const Text("Transcription Title"),
          subtitle: const Text("Time & date"),
          titleTextStyle: TextStyle(
              color: Colors.grey[900],
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
