library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
import 'webster_dictionary_response.dart';
import 'meta.dart';

part 'serializers.g.dart';

@SerializersFor([WebsterDictionaryResponse, Meta, String])
final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
          const FullType(BuiltList, [FullType(WebsterDictionaryResponse)]),
          () => ListBuilder<WebsterDictionaryResponse>())
      ..addPlugin(StandardJsonPlugin()))
    .build();

T deserialize<T>(dynamic value) =>
    serializers.deserializeWith<T>(serializers.serializerForType(T), value);

BuiltList<T> deserializeListOf<T>(dynamic value) => BuiltList.from(
    value.map((value) => deserialize<T>(value)).toList(growable: false));
