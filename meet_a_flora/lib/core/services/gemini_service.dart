import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@lazySingleton
class GeminiService {
  final String apiKey = "YOUR_GEMINI_API_KEY";

  Future<String> analyzePlant(File image) async {
    final bytes = await image.readAsBytes();
    final base64Image = base64Encode(bytes);

    final url = Uri.parse(
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro-vision:generateContent?key=$apiKey",
    );

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "contents": [
          {
            "parts": [
              {
                "text":
                    "Identify this plant and give name and description"
              },
              {
                "inline_data": {
                  "mime_type": "image/jpeg",
                  "data": base64Image
                }
              }
            ]
          }
        ]
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      final text = data['candidates'][0]['content']['parts'][0]['text'];

      return text;
    } else {
      throw Exception("Gemini API Error");
    }
  }
}