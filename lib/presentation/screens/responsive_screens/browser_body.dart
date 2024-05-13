import 'package:flutter/material.dart';
import 'package:transcribe_app/utils/constants.dart';
import 'package:transcribe_app/utils/transcribed_tile.dart';

import '../../../utils/my_tile.dart';

class BrowserBody extends StatefulWidget {
  const BrowserBody({super.key});

  @override
  State<BrowserBody> createState() => _BrowserBodyState();
}

class _BrowserBodyState extends State<BrowserBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: backgroundColor,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 2.5,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "Transcription Title",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Divider(
                  indent: 25,
                  endIndent: 25,
                ),
                Expanded(
                    // originally transcription body
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const TranscribedTile();
                        }))
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const MyTile();
                  }))
        ],
      ),
    );
  }
}
