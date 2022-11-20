import 'dart:convert';

import 'package:random_joke_app/const/const_string.dart';
import 'package:random_joke_app/models/joke_model.dart';

import 'package:http/http.dart' as http;

class JokeService {
  Future<JokeModel?> getJoke() async {
    JokeModel? joke;
    http.Response response = await http.get(Uri.parse(AppString.url));
    if (response.statusCode == 200) {
      try {
        var json = jsonDecode(response.body);
        joke = JokeModel.fromJson(json);
        print(joke.delivery);
     
      } on Exception catch (e) {
        print(e.toString());
      }
    } else {
      throw Exception();
    }
    return joke;
  }
}
