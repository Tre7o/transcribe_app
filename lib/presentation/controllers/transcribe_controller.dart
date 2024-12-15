import 'package:get/get.dart';
import 'package:transcribe_app/domain/models/transcription.dart';
import '../../domain/models/audio_file.dart';

class TranscribeController extends GetxController {
  static TranscribeController get instance => Get.find();

  String transcriptionTitleController = '';
  String transcriptionDateController = '';
  String transcriptionTimeController = '';

  Rx<List<AudioFile>> audioFiles = Rx<List<AudioFile>>([]); // from audio

  RxList<AudioFile> audioFileList = RxList<AudioFile>(); // just to test

  RxList<Transcription> transcriptionList = RxList<Transcription>();

  late AudioFile audioFile;
  var listItem = 0.obs;

  late Transcription transcription;
  var tranListItem = 0.obs;

  void addAudioFile(
    String audioFileTitle,
    String audioFileDate,
    String audioFileTime,
  ) {
    audioFile = AudioFile(audioFileTitle, audioFileDate, audioFileTime);
    audioFileList.add(audioFile); // just testing

    // audioFiles.value.add(audioFile); // from video
    listItem.value = audioFileList.length;
    // listItem.value = audioFiles.value.length;
  }

  void addTranscription(String name, String currentDate, String currentTime,
      String transcribedText) {
    transcription =
        Transcription(name, currentDate, currentTime, transcribedText);
    transcriptionList.add(transcription);

    tranListItem.value = transcriptionList.length;
  }

  void removeAudioFile(int index) {
    audioFileList.removeAt(index);
    // audioFiles.value.removeAt(index);
    listItem.value = audioFileList.length;
    // listItem.value = audioFiles.value.length;
  }
}
