part of 'dictionary_bloc.dart';

@immutable
abstract class DictionaryState {}

class DictionaryInitial extends DictionaryState {}

class DictonarySuggestedTerms extends DictionaryState {
  final List<String> suggestions;

  DictonarySuggestedTerms(this.suggestions);
}

class DictonaryTermResult extends DictionaryState {
  final WebsterDictionaryResponse result;

  DictonaryTermResult(this.result);
}
