import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transcribe_app/utils/constants.dart';
import 'package:transcribe_app/utils/widgets/my_tile.dart';
import '../../../utils/widgets/transcribed_tile.dart';
import '../../controllers/transcribe_controller.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  final transcribeController = Get.put(TranscribeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: backgroundColor,
      drawer: buildMyDrawer(context),
      body: Column(
        children: [
          // mobile_grid was here
          AspectRatio(
            aspectRatio: 0.5,
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
                ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const TranscribedTile();
                    })
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
              child: Obx(
            () => ListView.builder(
                itemCount: transcribeController.listItem.value,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: MyTile(index: index)
                    ),
                  );
                }),
          ))
        ],
      ),
    );
  }
}
