import 'package:flutter/material.dart';
import '../model/card_model.dart';

// TODO: create a provider with riverpod generator to expose the repository
class CardRepository {
  Future<List<CardModel>> getAllCards() async {
    return Future.delayed(
      const Duration(milliseconds: 300),
      () {
        return CardModel.sampleCards;
      },
    );
  }

  Future<CardModel> getCard(int cardId) async {
    return Future.delayed(
      const Duration(milliseconds: 300),
      () {
        return CardModel.sampleCards.where((card) => card.id == cardId).first;
      },
    );
  }
}
