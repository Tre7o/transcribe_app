import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;

class TranscribeData {
  final String flaskUrl = "http://127.0.0.1:5000/transcribe";

  Future<String> sendForTranscription(PlatformFile file) async {
    try {
      // Create a multipart request
      var request = http.MultipartRequest('POST', Uri.parse(flaskUrl));

      // Attach the file
      request.files.add(await http.MultipartFile.fromPath('file', file.path!));

      // Send the request
      var response = await request.send();
      print(response);

      // Process the response
      if (response.statusCode == 200) {
        var responseBody = await response.stream.bytesToString();
        print(response);
        return responseBody; // Flask should return the transcription text
      } else {
        return "Error: ${response.reasonPhrase}";
      }
    } catch (e) {
      print('Caught error: $e');
      return 'Error transcribing file';
    }
  }
}
