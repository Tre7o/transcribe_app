import 'package:flutter/material.dart';
import 'package:transcribe_app/presentation/screens/home_screen.dart';

void main() {
  runApp(const TranscribeApp());
}

class TranscribeApp extends StatelessWidget {
  const TranscribeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SermonScribe',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
