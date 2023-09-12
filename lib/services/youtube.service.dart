import 'dart:convert';
import 'dart:async';
import 'package:genzsound/models/video.model.dart';
import 'package:http/http.dart' as http;

class YoutubeService {
  static Future<List<VideoModel>> searchVideo(String searchText) async {
    List<VideoModel> videos = [];

    // if (searchText == '') {
    //   return videos;
    // }

    const apiUrl = 'https://genzsound.com/api/songs/search';
    Map body = {'name': searchText};

    final response = await http.post(
      Uri.parse(apiUrl),
      body: jsonEncode(body),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    // final body = json.decode(response.body);

    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      videos = (body['data']['content'] as List)
          .map((videoJson) => VideoModel.fromJson(videoJson))
          .toList();
      print('111');
      return videos;
    } else {
      print('222');
      throw Exception('Failed to search video');
    }
  }
}
