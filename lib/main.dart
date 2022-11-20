import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_joke_app/bloc/bloc/joke_bloc.dart';
import 'package:random_joke_app/presentation_layer/home_screen.dart';

import 'package:random_joke_app/repository/joke_repository.dart';

void main() {
  runApp(const JokeApp());
}

class JokeApp extends StatelessWidget {
  const JokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<JokeBloc>(
      create: (context) =>
          JokeBloc(JokeRepository())..add(const JokePressedEvent()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
