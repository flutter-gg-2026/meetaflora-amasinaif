import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:meet_a_flora/core/network/api_endpoints.dart';
import 'package:meet_a_flora/core/network/dio_client.dart';

extension GeminiExtension on DioClient {

  Future<String?> analyzePlant({required File image}) async {
    // Convert image to base64
    final bytes = await image.readAsBytes();
    final base64Image = base64Encode(bytes);

    final url =
        '${ApiEndpoints.geminiBaseUrl}'
        '${ApiEndpoints.geminiVersion}'
        '${ApiEndpoints.geminiModel}?key=${dotenv.env['gemini_key']}';

    final response = await dio.post(
      url,
      data: {
        "contents": [
          {
            "parts": [
              {
                "text":
                    "Identify this plant and give a short description."
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
      },
    );

    // Extract text from response
    return response
        .data['candidates'][0]['content']['parts'][0]['text'];
  }
}