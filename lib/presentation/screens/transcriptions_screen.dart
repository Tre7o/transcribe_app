import 'package:flutter/material.dart';

import '../../utils/widgets/top_bar.dart';

class TranscriptionsScreen extends StatefulWidget {
  const TranscriptionsScreen({super.key});

  @override
  State<TranscriptionsScreen> createState() => _TranscriptionsScreenState();
}

class _TranscriptionsScreenState extends State<TranscriptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          isDashboardTapped: false,
          isSettingsTapped: false,
          isTranscriptionsTapped: true),
      body: const Center(
        child: Text(
          "Transcriptions",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
