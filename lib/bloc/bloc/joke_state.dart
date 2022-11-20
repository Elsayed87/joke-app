part of 'joke_bloc.dart';

abstract class JokeState extends Equatable {
  const JokeState();

  @override
  List<Object> get props => [];
}

class JokeInitial extends JokeState {}

class JokeLoadingState extends JokeState {}

class JokeLoadedState extends JokeState {
  final JokeModel joke;

  const JokeLoadedState({required this.joke});
  @override
  List<Object> get props => [joke];
}

class JokeErrorState extends JokeState {
  final String errorMassage;

  const JokeErrorState({required this.errorMassage});
  @override
  List<Object> get props => [errorMassage];
}
