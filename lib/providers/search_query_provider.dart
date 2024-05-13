import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_query_provider.g.dart';

// riverpod generator
@riverpod
class SearchQuery extends _$SearchQuery {
  @override
  String build() {
    return '';
  }

  void onChange(String query) {
    state = query;
  }

  // TODO: Add another method
}
