import 'package:flutter_gemini/flutter_gemini.dart';

class GeminiController {
  static Future<String?> outputFromText(String query) async {
    final gemini = Gemini.instance;

    try {
      var value = await gemini.text(query);
      return value?.output;
    } catch (e) {
      print(e);
    }
    return "null";
  }
}
