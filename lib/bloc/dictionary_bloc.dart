import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:meta/meta.dart';

import '../entity/webster_dictionary_response.dart';
import '../repository/dictionary_repository.dart';

part 'dictionary_event.dart';
part 'dictionary_state.dart';

class DictionaryBloc extends Bloc<DictionaryEvent, DictionaryState> {
  @override
  DictionaryState get initialState => DictionaryInitial();

  @override
  Stream<DictionaryState> mapEventToState(DictionaryEvent event) async* {
    if (event is SearchMeaningEvent) {
      //Fire webrequest to search and return a state depending on it
      yield Loading();
      DictionaryResult result =
          await DictionaryRepository().fetchDictionaryMeaningOf(event.term);

      if (result.hasError) yield DictionaryInitial();

      switch (result.resultType) {
        case DictionaryResultType.termResult:
          yield DictonaryTermResult(result.termResult);
          break;
        case DictionaryResultType.searchSuggestions:
          yield DictonarySuggestedTerms(result.suggestedTerms);
          break;
      }
    } else {
      yield DictionaryInitial();
    }
  }
}
