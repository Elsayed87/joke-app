import 'package:flutter/material.dart';
import 'package:random_joke_app/const/app_color.dart';
import 'package:random_joke_app/const/const_style.dart';

class CardCusomItem extends StatelessWidget {
  const CardCusomItem(
      {super.key, required this.textDelivery, required this.textSetup});
  final String textSetup;
  final String textDelivery;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: AppColor.expantionBackgroundColor,
      child: ExpansionTile(
        collapsedIconColor: AppColor.backgroundColor,
        title: Text(
          textSetup,
          textAlign: TextAlign.center,
          style: AppStyle.fontStyle,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(textDelivery,
                textAlign: TextAlign.center, style: AppStyle.fontStyle),
          )
        ],
      ),
    );
  }
}
