import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../model/card_model.dart';

// riverpod
part 'card_repository.g.dart'; // expose these repository

@riverpod
CardRepository cardRepository(CardRepositoryRef ref) => CardRepository();

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
