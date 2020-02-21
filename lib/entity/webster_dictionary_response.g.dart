// GENERATED CODE - DO NOT MODIFY BY HAND

part of webster_dictionary_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WebsterDictionaryResponse> _$websterDictionaryResponseSerializer =
    new _$WebsterDictionaryResponseSerializer();

class _$WebsterDictionaryResponseSerializer
    implements StructuredSerializer<WebsterDictionaryResponse> {
  @override
  final Iterable<Type> types = const [
    WebsterDictionaryResponse,
    _$WebsterDictionaryResponse
  ];
  @override
  final String wireName = 'WebsterDictionaryResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, WebsterDictionaryResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.meta != null) {
      result
        ..add('meta')
        ..add(serializers.serialize(object.meta,
            specifiedType: const FullType(Meta)));
    }
    if (object.shortdef != null) {
      result
        ..add('shortdef')
        ..add(serializers.serialize(object.shortdef,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  WebsterDictionaryResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WebsterDictionaryResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(Meta)) as Meta);
          break;
        case 'shortdef':
          result.shortdef.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$WebsterDictionaryResponse extends WebsterDictionaryResponse {
  @override
  final Meta meta;
  @override
  final BuiltList<String> shortdef;

  factory _$WebsterDictionaryResponse(
          [void Function(WebsterDictionaryResponseBuilder) updates]) =>
      (new WebsterDictionaryResponseBuilder()..update(updates)).build();

  _$WebsterDictionaryResponse._({this.meta, this.shortdef}) : super._();

  @override
  WebsterDictionaryResponse rebuild(
          void Function(WebsterDictionaryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebsterDictionaryResponseBuilder toBuilder() =>
      new WebsterDictionaryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebsterDictionaryResponse &&
        meta == other.meta &&
        shortdef == other.shortdef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, meta.hashCode), shortdef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WebsterDictionaryResponse')
          ..add('meta', meta)
          ..add('shortdef', shortdef))
        .toString();
  }
}

class WebsterDictionaryResponseBuilder
    implements
        Builder<WebsterDictionaryResponse, WebsterDictionaryResponseBuilder> {
  _$WebsterDictionaryResponse _$v;

  MetaBuilder _meta;
  MetaBuilder get meta => _$this._meta ??= new MetaBuilder();
  set meta(MetaBuilder meta) => _$this._meta = meta;

  ListBuilder<String> _shortdef;
  ListBuilder<String> get shortdef =>
      _$this._shortdef ??= new ListBuilder<String>();
  set shortdef(ListBuilder<String> shortdef) => _$this._shortdef = shortdef;

  WebsterDictionaryResponseBuilder();

  WebsterDictionaryResponseBuilder get _$this {
    if (_$v != null) {
      _meta = _$v.meta?.toBuilder();
      _shortdef = _$v.shortdef?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebsterDictionaryResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WebsterDictionaryResponse;
  }

  @override
  void update(void Function(WebsterDictionaryResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WebsterDictionaryResponse build() {
    _$WebsterDictionaryResponse _$result;
    try {
      _$result = _$v ??
          new _$WebsterDictionaryResponse._(
              meta: _meta?.build(), shortdef: _shortdef?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();
        _$failedField = 'shortdef';
        _shortdef?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WebsterDictionaryResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
