// GENERATED CODE - DO NOT MODIFY BY HAND

part of meta;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Meta> _$metaSerializer = new _$MetaSerializer();

class _$MetaSerializer implements StructuredSerializer<Meta> {
  @override
  final Iterable<Type> types = const [Meta, _$Meta];
  @override
  final String wireName = 'Meta';

  @override
  Iterable<Object> serialize(Serializers serializers, Meta object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.uuid != null) {
      result
        ..add('uuid')
        ..add(serializers.serialize(object.uuid,
            specifiedType: const FullType(String)));
    }
    if (object.sort != null) {
      result
        ..add('sort')
        ..add(serializers.serialize(object.sort,
            specifiedType: const FullType(String)));
    }
    if (object.src != null) {
      result
        ..add('src')
        ..add(serializers.serialize(object.src,
            specifiedType: const FullType(String)));
    }
    if (object.section != null) {
      result
        ..add('section')
        ..add(serializers.serialize(object.section,
            specifiedType: const FullType(String)));
    }
    if (object.stems != null) {
      result
        ..add('stems')
        ..add(serializers.serialize(object.stems,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.offensive != null) {
      result
        ..add('offensive')
        ..add(serializers.serialize(object.offensive,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Meta deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MetaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uuid':
          result.uuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sort':
          result.sort = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'src':
          result.src = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'section':
          result.section = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'stems':
          result.stems.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'offensive':
          result.offensive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Meta extends Meta {
  @override
  final String id;
  @override
  final String uuid;
  @override
  final String sort;
  @override
  final String src;
  @override
  final String section;
  @override
  final BuiltList<String> stems;
  @override
  final bool offensive;

  factory _$Meta([void Function(MetaBuilder) updates]) =>
      (new MetaBuilder()..update(updates)).build();

  _$Meta._(
      {this.id,
      this.uuid,
      this.sort,
      this.src,
      this.section,
      this.stems,
      this.offensive})
      : super._();

  @override
  Meta rebuild(void Function(MetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetaBuilder toBuilder() => new MetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Meta &&
        id == other.id &&
        uuid == other.uuid &&
        sort == other.sort &&
        src == other.src &&
        section == other.section &&
        stems == other.stems &&
        offensive == other.offensive;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, id.hashCode), uuid.hashCode), sort.hashCode),
                    src.hashCode),
                section.hashCode),
            stems.hashCode),
        offensive.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Meta')
          ..add('id', id)
          ..add('uuid', uuid)
          ..add('sort', sort)
          ..add('src', src)
          ..add('section', section)
          ..add('stems', stems)
          ..add('offensive', offensive))
        .toString();
  }
}

class MetaBuilder implements Builder<Meta, MetaBuilder> {
  _$Meta _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _uuid;
  String get uuid => _$this._uuid;
  set uuid(String uuid) => _$this._uuid = uuid;

  String _sort;
  String get sort => _$this._sort;
  set sort(String sort) => _$this._sort = sort;

  String _src;
  String get src => _$this._src;
  set src(String src) => _$this._src = src;

  String _section;
  String get section => _$this._section;
  set section(String section) => _$this._section = section;

  ListBuilder<String> _stems;
  ListBuilder<String> get stems => _$this._stems ??= new ListBuilder<String>();
  set stems(ListBuilder<String> stems) => _$this._stems = stems;

  bool _offensive;
  bool get offensive => _$this._offensive;
  set offensive(bool offensive) => _$this._offensive = offensive;

  MetaBuilder();

  MetaBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _uuid = _$v.uuid;
      _sort = _$v.sort;
      _src = _$v.src;
      _section = _$v.section;
      _stems = _$v.stems?.toBuilder();
      _offensive = _$v.offensive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Meta other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Meta;
  }

  @override
  void update(void Function(MetaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Meta build() {
    _$Meta _$result;
    try {
      _$result = _$v ??
          new _$Meta._(
              id: id,
              uuid: uuid,
              sort: sort,
              src: src,
              section: section,
              stems: _stems?.build(),
              offensive: offensive);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'stems';
        _stems?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Meta', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
