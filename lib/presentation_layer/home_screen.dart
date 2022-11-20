import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_joke_app/bloc/bloc/joke_bloc.dart';
import 'package:random_joke_app/const/app_color.dart';
import 'package:random_joke_app/const/const_style.dart';
import 'package:random_joke_app/widgets/card_Item.dart';

import 'package:random_joke_app/widgets/cutom_button.dart';
import 'package:random_joke_app/widgets/indicator_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.expantionBackgroundColor,
        title: const Text(
          'Joke APP',
          style: AppStyle.fontStyle,
        ),
      ),
      body: BlocBuilder<JokeBloc, JokeState>(
        builder: (context, state) {
          if (state is JokeLoadingState) {
            return const IndicatorWidget();
          } else if (state is JokeLoadedState) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CardCusomItem(
                          textSetup: state.joke.setup!,
                          textDelivery: state.joke.delivery!),
                      const SizedBox(
                        height: 30.0,
                      ),
                      GestureDetector(
                          onTap: () {
                            BlocProvider.of<JokeBloc>(context)
                                .add(const JokePressedEvent());
                          },
                          child: const CustomAppButton(
                            text: 'Load New Jooke',
                          ))
                    ]),
              ),
            );
          } else if (state is JokeErrorState) {
            return Text(state.errorMassage);
          } else {
            return Container(
              color: AppColor.indicatorColor,
            );
          }
        },
      ),
    );
  }
}

