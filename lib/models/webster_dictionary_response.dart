library webster_dictionary_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';

import 'meta.dart';
import 'serializers.dart';

part 'webster_dictionary_response.g.dart';

abstract class WebsterDictionaryResponse
    implements
        Built<WebsterDictionaryResponse, WebsterDictionaryResponseBuilder> {

  WebsterDictionaryResponse._();

  factory WebsterDictionaryResponse(
          [void Function(WebsterDictionaryResponseBuilder) updates]) =
      _$WebsterDictionaryResponse;

  @nullable
  @BuiltValueField(wireName: 'meta')
  Meta get meta;

  @nullable
  @BuiltValueField(wireName: 'shortdef')
  BuiltList<String> get shortdef;

  String toJson() {
    return json.encode(
        serializers.serializeWith(WebsterDictionaryResponse.serializer, this));
  }

  static WebsterDictionaryResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        WebsterDictionaryResponse.serializer, json.decode(jsonString));
  }

  static Serializer<WebsterDictionaryResponse> get serializer =>
      _$websterDictionaryResponseSerializer;
}
