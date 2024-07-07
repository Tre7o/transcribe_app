import 'package:flutter/material.dart';
import 'package:transcribe_app/utils/widgets/top_bar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(isDashboardTapped: false, isSettingsTapped: true, isTranscriptionsTapped: false),
      body: const Center(
        child: Text("Settings", style: TextStyle(fontSize: 25),),
      ),
    );
  }
}