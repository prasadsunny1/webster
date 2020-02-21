part of 'dictionary_bloc.dart';

@immutable
abstract class DictionaryState {}

class DictionaryInitial extends DictionaryState {}

class DictonarySuggestedTerms extends DictionaryState {
  final BuiltList<String> suggestions;

  DictonarySuggestedTerms.Dictionary(this.suggestions);
}

class DictonaryTermResult extends DictionaryState {
  final BuiltList<WebsterDictionaryResponse> result;

  DictonaryTermResult(this.result);
}

class Loading extends DictionaryState {
  Loading();
}
