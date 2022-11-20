import 'package:random_joke_app/models/joke_model.dart';
import 'package:random_joke_app/web_service/joke_service.dart';

class JokeRepository {
  JokeService jokeService = JokeService();
  Future<JokeModel?> getJoke() async {
    var joke = await jokeService.getJoke();
    return joke;
  }
}
