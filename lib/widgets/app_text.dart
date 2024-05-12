import 'package:_fourtho/gen/colors.gen.dart';
import 'package:_fourtho/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class AppText extends Text {
  final Color? color;
  final FontWeight? fontWeight;
  final double fontSize;

  AppText.title(
    String data, {
    Key? key,
    this.color = ColorName.primaryColor,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 36,
  }) : super(data,
            key: key,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: color,
                fontFamily: FontFamily.playfairDisplay,
                fontWeight: fontWeight,
                fontSize: fontSize));

  AppText.large(
    String data, {
    Key? key,
    this.color = ColorName.primaryColor,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 34,
  }) : super(data,
            key: key,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: color,
                fontFamily: FontFamily.merriweather,
                fontWeight: fontWeight,
                fontSize: fontSize));

  AppText.medium(
    String data, {
    Key? key,
    this.color = ColorName.primaryColor,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 24,
  }) : super(data,
            key: key,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: color,
                fontFamily: FontFamily.merriweather,
                fontWeight: fontWeight,
                fontSize: fontSize));

  AppText.small(
    String data, {
    Key? key,
    this.color = ColorName.primaryColor,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 14,
  }) : super(data,
            key: key,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: color,
                fontFamily: FontFamily.merriweather,
                fontWeight: fontWeight,
                fontSize: fontSize));
}
