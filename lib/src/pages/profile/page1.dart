import 'package:flutter/material.dart';
import 'package:flutter_architecture/src/custom_widgets/button.dart';
import 'package:flutter_architecture/src/custom_widgets/text.dart';
import 'package:flutter_architecture/src/values/colors.dart' as colors;

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colors.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CustomText(
            accent: true,
            small: true,
            text: "ACCENT COLOR",
          ),
          CustomText(
            small: true,
            text: "PRIMARY COLOR",
          ),
          CustomText(
            small: true,
            primaryDark: true,
            text: "PRIMARY DARK COLOR",
          ),
          CustomText(
            small: true,
            dark: true,
            text: "DARK COLOR",
          ),
          CustomButton(
            primary: true,
            label: "Primary Button",
            onPress: () => null,
          ),
          CustomButton(
            label: "Default Button",
            onPress: () => null,
          )
        ]
      )
    ); 
  }
}