import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../presentation/controllers/transcribe_controller.dart';

class CustomDialog extends StatefulWidget {
  CustomDialog({super.key});

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  final transcribeController = Get.put(TranscribeController());
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.audio_file),
              Text(
                "Upload your audio file",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(message),
              ElevatedButton(
                onPressed: () async {
                  FilePickerResult? result =
                      await FilePicker.platform.pickFiles();

                  if (result != null) {
                    final file = result.files.first;

                    print(file.name);
                    // print(file.bytes);
                    print(file.size);
                    print(file.extension);
                    // print(file.path);

                    DateTime dateTime = DateTime.now();
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(dateTime);
                    String formattedTime =
                        DateFormat('HH:mm:ss').format(dateTime);

                    if (file.extension != 'mp3' &&
                        file.extension != 'mp4' &&
                        file.extension != 'm4a') {
                      setState(() {
                        message = 'Please select an audio or video file';
                      });
                    } else {
                      transcribeController.addAudioFile(
                          file.name, formattedDate, formattedTime);

                      // ignore: use_build_context_synchronously
                      Navigator.of(context)
                          .pop(); // to remove the dialog box after
                    }

                    // final transcription = Transcription(
                    //     file.name, formattedDate, formattedTime, null);

                    // setState(() {
                    //   transcribeController.transcriptionTitleController = transcription.fileName;
                    //   transcribeController.transcriptionDateController = transcription.currentDate;
                    //   transcribeController.transcriptionTimeController = transcription.currentTime;
                    // });
                  } else {
                    // User canceled the picker
                    return;
                  }
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 60),
                    backgroundColor: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text(
                  "Select file",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey[900]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
