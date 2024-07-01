import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../presentation/controllers/transcribe_controller.dart';

class MyTile extends StatefulWidget {
  final int index;

  const MyTile({super.key, required this.index});

  @override
  State<MyTile> createState() => _MyTileState();
}

class _MyTileState extends State<MyTile> {
  final transcribeController = Get.put(TranscribeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[300],
        ),
        child: ListTile(
          leading: const Icon(Icons.audio_file),
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              removeFileExtension(
                  transcribeController.audioFileList[widget.index].fileName),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          subtitle: Text(
                  "${transcribeController.audioFileList[widget.index].currentDate} ${transcribeController.audioFileList[widget.index].currentTime}"),
          titleTextStyle: TextStyle(
              color: Colors.grey[900],
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  String removeFileExtension(String fileName) {
    int lastDotIndex = fileName.lastIndexOf('.');
    if (lastDotIndex == -1) {
      // No extension found
      return fileName;
    }
    return fileName.substring(0, lastDotIndex);
  }
}
