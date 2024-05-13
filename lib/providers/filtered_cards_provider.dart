import 'package:_fourtho/model/card_model.dart';
import 'package:_fourtho/repositories/card_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filtered_cards_provider.g.dart'; // careful with naming convention

@riverpod
Future<List<CardModel>> filteredCards(FilterdCardsRef ref) async {
  final CardRepository cardRepository = ref.watch(cardRepositoryProvider);
  var allCards = cardRepository.getAllCards();
  return allCards;
}
