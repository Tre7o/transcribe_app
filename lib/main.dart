import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transcribe_app/presentation/screens/home_screen.dart';
import 'package:transcribe_app/presentation/screens/settings_screen.dart';
import 'package:transcribe_app/presentation/screens/transcriptions_screen.dart';

void main() {
  runApp(const TranscribeApp());
}

class TranscribeApp extends StatelessWidget {
  const TranscribeApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SermonScribe',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        // Apply Montserrat globally
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      routes: {
        '/home': (context) => HomeScreen(),
        '/transcriptions': (context) => TranscriptionsScreen(),
        '/settings': (context) => SettingsScreen()
      },
    );
  }
}
