part of 'joke_bloc.dart';

abstract class JokeEvent extends Equatable {
  const JokeEvent();

  @override
  List<Object> get props => [];
}

class JokePressedEvent extends JokeEvent {
  const JokePressedEvent();
}
