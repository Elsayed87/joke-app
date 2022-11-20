import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:random_joke_app/models/joke_model.dart';
import 'package:random_joke_app/repository/joke_repository.dart';

part 'joke_event.dart';
part 'joke_state.dart';

class JokeBloc extends Bloc<JokeEvent, JokeState> {
  JokeRepository jokeRepository = JokeRepository();
  JokeBloc(this.jokeRepository) : super(JokeInitial()) {
    on<JokePressedEvent>((event, emit) async {
      emit(JokeLoadingState());

      try {
        var joke = await jokeRepository.getJoke();
        emit(JokeLoadedState(joke: joke!));
      } catch (e) {
        emit(JokeErrorState(errorMassage: e.toString()));
      }
    });
  }
}
