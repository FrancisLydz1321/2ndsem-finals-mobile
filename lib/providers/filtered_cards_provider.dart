import 'package:_fourtho/model/card_model.dart';
import 'package:_fourtho/providers/search_query_provider.dart';
import 'package:_fourtho/providers/selected_category_provider.dart';
import 'package:_fourtho/repositories/card_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'filtered_cards_provider.g.dart'; // careful with naming convention
part 'filtered_cards_provider.g.dart';

@riverpod
Future<List<CardModel>> filteredCards(FilteredCardsRef ref) async {
  // check for naming conventions
  final CardRepository cardRepository = ref.watch(cardRepositoryProvider);
  final selectedCategory = ref.watch(selectedCategoryProvider);
  final searchQuery = ref.watch(searchQueryProvider);

  var allCards = await cardRepository.getAllCards();

  if (selectedCategory != null) {
    return allCards.where((card) {
      return card.categories.any((category) => category == selectedCategory);
    }).toList();
  }

  if (searchQuery.trim().isNotEmpty) {
    return allCards.where((card) {
      return card.name.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();
  }

  return allCards;
}
