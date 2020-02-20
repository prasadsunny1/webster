import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
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
      if (response.data is List<dynamic>) {
        return DictionaryResult(
          hasError: false,
          resultType: DictionaryResultType.searchSuggestions,
          suggestedTerms: List<String>.from(response.data),
        );
      } else if (response.data is Map<String, dynamic>) {
        //if result is termResult
        var resultMap = json.decode(response.data);
        WebsterDictionaryResponse resultModel =
            WebsterDictionaryResponse.fromJson(resultMap);

        return DictionaryResult(
          hasError: false,
          resultType: DictionaryResultType.termResult,
          termResult: resultModel,
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
  final List<String> suggestedTerms;
  final WebsterDictionaryResponse termResult;

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
