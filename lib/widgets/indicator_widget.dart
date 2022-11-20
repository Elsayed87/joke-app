import 'package:flutter/material.dart';
import 'package:random_joke_app/const/app_color.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
          strokeWidth: 6.0,
      color: AppColor.indicatorColor,
    ));
  }
}
