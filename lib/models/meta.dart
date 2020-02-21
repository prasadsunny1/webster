library meta;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'meta.g.dart';

abstract class Meta implements Built<Meta, MetaBuilder> {

  Meta._();

  factory Meta([void Function(MetaBuilder) updates]) = _$Meta;
  
  @nullable
  @BuiltValueField(wireName: 'id')
  String get id;
  @nullable
  @BuiltValueField(wireName: 'uuid')
  String get uuid;
  @nullable
  @BuiltValueField(wireName: 'sort')
  String get sort;
  @nullable
  @BuiltValueField(wireName: 'src')
  String get src;
  @nullable
  @BuiltValueField(wireName: 'section')
  String get section;
  @nullable
  @BuiltValueField(wireName: 'stems')
  BuiltList<String> get stems;
  @nullable
  @BuiltValueField(wireName: 'offensive')
  bool get offensive;
  String toJson() {
    return json.encode(serializers.serializeWith(Meta.serializer, this));
  }

  static Meta fromJson(String jsonString) {
    return serializers.deserializeWith(
        Meta.serializer, json.decode(jsonString));
  }

  static Serializer<Meta> get serializer => _$metaSerializer;
}
