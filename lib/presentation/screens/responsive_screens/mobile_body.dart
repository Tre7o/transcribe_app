import 'package:flutter/material.dart';
import 'package:transcribe_app/utils/constants.dart';
import 'package:transcribe_app/utils/my_tile.dart';

import '../../../utils/transcribed_tile.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: backgroundColor,
      drawer: myDrawer,
      body: Column(
        children: [
          // mobile_grid was here
          AspectRatio(
            aspectRatio: 1,
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
