part of 'dictionary_bloc.dart';

@immutable
abstract class DictionaryEvent {}

class SearchMeaningEvent extends DictionaryEvent {
  final String term;
  SearchMeaningEvent(this.term);
  
}