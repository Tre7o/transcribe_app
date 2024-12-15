import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../presentation/controllers/transcribe_controller.dart';

class TranscribedTile extends StatefulWidget {
  const TranscribedTile({super.key});

  @override
  State<TranscribedTile> createState() => _TranscribedTileState();
}

class _TranscribedTileState extends State<TranscribedTile> {

  final transcribeController = Get.put(TranscribeController());

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Speaker",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            Text(
                "Carriage quitting securing be appetite it declared. High eyes kept so busy feel call in. Would day nor ask walls known. But preserved advantage are but and certainty earnestly enjoyment. Passage weather as up am exposed. And natural related man subject. Eagerness get situation his was delighted.")
          ],
        ));
  }
}
