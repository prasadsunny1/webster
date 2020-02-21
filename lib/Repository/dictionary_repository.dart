import 'dart:convert';

import 'package:built_collection/built_collection.dart' show BuiltList;
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../models/serializers.dart';

import '../models/webster_dictionary_response.dart';

class DictionaryRepository {
  Future<DictionaryResult> fetchDictionaryMeaningOf(String term) async {
    //call the dictionary web service to get the result
    var url =
        'https://www.dictionaryapi.com/api/v3/references/collegiate/json/$term?key=4750a506-191a-451f-92c9-2f03336360b6';
    var response = await Dio().get(url);

    if (response.statusCode == 200) {
      print('runtime type of response ${response.data.runtimeType}');
      print('data is ${response.data}');

      BuiltList<WebsterDictionaryResponse> builtDictList;
      BuiltList<String> builtSuggestionList;
      try {
        builtDictList =
            deserializeListOf<WebsterDictionaryResponse>(response.data);
      } catch (e) {
        print(e);
      }
      try {
        builtSuggestionList = BuiltList<String>.from(response.data);
      } catch (e) {
        print(e);
      }
      print(builtDictList);
      print(builtSuggestionList);

      if (builtSuggestionList != null) {
        return DictionaryResult(
          hasError: false,
          resultType: DictionaryResultType.searchSuggestions,
          suggestedTerms: builtSuggestionList,
        );
      } else if (builtDictList != null) {
        return DictionaryResult(
          hasError: false,
          resultType: DictionaryResultType.termResult,
          termResult: builtDictList,
        );
      }
      return DictionaryResult(
        hasError: true,
      );
    }
    return DictionaryResult(
      hasError: true,
    );
  }
}

class DictionaryResult {
  final bool hasError;
  final String errorMessage;
  final DictionaryResultType resultType;
  final BuiltList<String> suggestedTerms;
  final BuiltList<WebsterDictionaryResponse> termResult;

  DictionaryResult({
    @required this.hasError,
    this.errorMessage,
    this.resultType,
    this.suggestedTerms,
    this.termResult,
  });
}

enum DictionaryResultType {
  termResult,
  searchSuggestions,
}
