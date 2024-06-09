import 'package:flutter/material.dart';
import 'package:transcribe_app/utils/constants.dart';

import '../../../utils/widgets/my_tile.dart';
import '../../../utils/widgets/transcribed_tile.dart';

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
      drawer: buildMyDrawer(context),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Your transcriptions",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return MyTile();
                  }))
        ],
      ),
    );
  }
}
