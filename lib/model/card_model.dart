import 'package:_fourtho/gen/assets.gen.dart';
import 'package:_fourtho/gen/colors.gen.dart';
import 'package:flutter/material.dart';

enum CardCategory { birthday, chirstmas, general, congratulation }

class CardModel {
  final int id;
  final String name;
  final String thumbnailPath;
  final Color bgColor;
  final List<CardCategory> categories;

  CardModel(
      {required this.id,
      required this.name,
      required this.thumbnailPath,
      required this.bgColor,
      required this.categories});

  static List<CardModel> sampleCards = [
    CardModel(
        id: 1,
        name: 'Happy Birthday 2',
        thumbnailPath: Assets.cards.frame2.path,
        bgColor: ColorName.bgBlue,
        categories: [CardCategory.general, CardCategory.chirstmas]),
    CardModel(
        id: 1,
        name: 'Happy Birthday 3',
        thumbnailPath: Assets.cards.frame3.path,
        bgColor: ColorName.bgBlue,
        categories: [CardCategory.general, CardCategory.chirstmas]),
    CardModel(
        id: 1,
        name: 'Happy Birthday 4 ',
        thumbnailPath: Assets.cards.frame4.path,
        bgColor: ColorName.bgBlue,
        categories: [CardCategory.general, CardCategory.chirstmas]),
    CardModel(
        id: 1,
        name: 'Happy Birthday 5 ',
        thumbnailPath: Assets.cards.frame5.path,
        bgColor: ColorName.bgBlue,
        categories: [CardCategory.general, CardCategory.chirstmas]),
  ];
}
