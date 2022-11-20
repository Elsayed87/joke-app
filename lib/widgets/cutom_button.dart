import 'package:flutter/material.dart';
import 'package:random_joke_app/const/app_color.dart';
import 'package:random_joke_app/const/const_style.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: AppColor.expantionBackgroundColor,
          borderRadius: BorderRadius.circular(16.0)),
      child: Center(child: Text(text, style: AppStyle.fontStyle)),
    );
  }
}
