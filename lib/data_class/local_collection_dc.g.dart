// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_collection_dc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocalCollectionDC> _$localCollectionDCSerializer =
    new _$LocalCollectionDCSerializer();

class _$LocalCollectionDCSerializer
    implements StructuredSerializer<LocalCollectionDC> {
  @override
  final Iterable<Type> types = const [LocalCollectionDC, _$LocalCollectionDC];
  @override
  final String wireName = 'LocalCollectionDC';

  @override
  Iterable<Object> serialize(Serializers serializers, LocalCollectionDC object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.articleId != null) {
      result
        ..add('articleId')
        ..add(serializers.serialize(object.articleId,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.widgetName != null) {
      result
        ..add('widgetName')
        ..add(serializers.serialize(object.widgetName,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  LocalCollectionDC deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocalCollectionDCBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'articleId':
          result.articleId.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'widgetName':
          result.widgetName.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$LocalCollectionDC extends LocalCollectionDC {
  @override
  final BuiltList<String> articleId;
  @override
  final BuiltList<String> widgetName;

  factory _$LocalCollectionDC(
          [void Function(LocalCollectionDCBuilder) updates]) =>
      (new LocalCollectionDCBuilder()..update(updates)).build();

  _$LocalCollectionDC._({this.articleId, this.widgetName}) : super._();

  @override
  LocalCollectionDC rebuild(void Function(LocalCollectionDCBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalCollectionDCBuilder toBuilder() =>
      new LocalCollectionDCBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalCollectionDC &&
        articleId == other.articleId &&
        widgetName == other.widgetName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, articleId.hashCode), widgetName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocalCollectionDC')
          ..add('articleId', articleId)
          ..add('widgetName', widgetName))
        .toString();
  }
}

class LocalCollectionDCBuilder
    implements Builder<LocalCollectionDC, LocalCollectionDCBuilder> {
  _$LocalCollectionDC _$v;

  ListBuilder<String> _articleId;
  ListBuilder<String> get articleId =>
      _$this._articleId ??= new ListBuilder<String>();
  set articleId(ListBuilder<String> articleId) => _$this._articleId = articleId;

  ListBuilder<String> _widgetName;
  ListBuilder<String> get widgetName =>
      _$this._widgetName ??= new ListBuilder<String>();
  set widgetName(ListBuilder<String> widgetName) =>
      _$this._widgetName = widgetName;

  LocalCollectionDCBuilder();

  LocalCollectionDCBuilder get _$this {
    if (_$v != null) {
      _articleId = _$v.articleId?.toBuilder();
      _widgetName = _$v.widgetName?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalCollectionDC other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LocalCollectionDC;
  }

  @override
  void update(void Function(LocalCollectionDCBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocalCollectionDC build() {
    _$LocalCollectionDC _$result;
    try {
      _$result = _$v ??
          new _$LocalCollectionDC._(
              articleId: _articleId?.build(), widgetName: _widgetName?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'articleId';
        _articleId?.build();
        _$failedField = 'widgetName';
        _widgetName?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LocalCollectionDC', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
