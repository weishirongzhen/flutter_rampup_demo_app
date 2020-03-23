// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_history_dc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchHistoryDC> _$searchHistoryDCSerializer =
    new _$SearchHistoryDCSerializer();
Serializer<HistoryItem> _$historyItemSerializer = new _$HistoryItemSerializer();

class _$SearchHistoryDCSerializer
    implements StructuredSerializer<SearchHistoryDC> {
  @override
  final Iterable<Type> types = const [SearchHistoryDC, _$SearchHistoryDC];
  @override
  final String wireName = 'SearchHistoryDC';

  @override
  Iterable<Object> serialize(Serializers serializers, SearchHistoryDC object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.histories != null) {
      result
        ..add('histories')
        ..add(serializers.serialize(object.histories,
            specifiedType: const FullType(
                BuiltList, const [const FullType(HistoryItem)])));
    }
    return result;
  }

  @override
  SearchHistoryDC deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchHistoryDCBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'histories':
          result.histories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(HistoryItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$HistoryItemSerializer implements StructuredSerializer<HistoryItem> {
  @override
  final Iterable<Type> types = const [HistoryItem, _$HistoryItem];
  @override
  final String wireName = 'HistoryItem';

  @override
  Iterable<Object> serialize(Serializers serializers, HistoryItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.route != null) {
      result
        ..add('route')
        ..add(serializers.serialize(object.route,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  HistoryItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistoryItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'route':
          result.route = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchHistoryDC extends SearchHistoryDC {
  @override
  final BuiltList<HistoryItem> histories;

  factory _$SearchHistoryDC([void Function(SearchHistoryDCBuilder) updates]) =>
      (new SearchHistoryDCBuilder()..update(updates)).build();

  _$SearchHistoryDC._({this.histories}) : super._();

  @override
  SearchHistoryDC rebuild(void Function(SearchHistoryDCBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchHistoryDCBuilder toBuilder() =>
      new SearchHistoryDCBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchHistoryDC && histories == other.histories;
  }

  @override
  int get hashCode {
    return $jf($jc(0, histories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchHistoryDC')
          ..add('histories', histories))
        .toString();
  }
}

class SearchHistoryDCBuilder
    implements Builder<SearchHistoryDC, SearchHistoryDCBuilder> {
  _$SearchHistoryDC _$v;

  ListBuilder<HistoryItem> _histories;
  ListBuilder<HistoryItem> get histories =>
      _$this._histories ??= new ListBuilder<HistoryItem>();
  set histories(ListBuilder<HistoryItem> histories) =>
      _$this._histories = histories;

  SearchHistoryDCBuilder();

  SearchHistoryDCBuilder get _$this {
    if (_$v != null) {
      _histories = _$v.histories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchHistoryDC other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchHistoryDC;
  }

  @override
  void update(void Function(SearchHistoryDCBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchHistoryDC build() {
    _$SearchHistoryDC _$result;
    try {
      _$result = _$v ?? new _$SearchHistoryDC._(histories: _histories?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'histories';
        _histories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchHistoryDC', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HistoryItem extends HistoryItem {
  @override
  final String name;
  @override
  final String route;

  factory _$HistoryItem([void Function(HistoryItemBuilder) updates]) =>
      (new HistoryItemBuilder()..update(updates)).build();

  _$HistoryItem._({this.name, this.route}) : super._();

  @override
  HistoryItem rebuild(void Function(HistoryItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryItemBuilder toBuilder() => new HistoryItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryItem && name == other.name && route == other.route;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), route.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HistoryItem')
          ..add('name', name)
          ..add('route', route))
        .toString();
  }
}

class HistoryItemBuilder implements Builder<HistoryItem, HistoryItemBuilder> {
  _$HistoryItem _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _route;
  String get route => _$this._route;
  set route(String route) => _$this._route = route;

  HistoryItemBuilder();

  HistoryItemBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _route = _$v.route;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HistoryItem;
  }

  @override
  void update(void Function(HistoryItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HistoryItem build() {
    final _$result = _$v ?? new _$HistoryItem._(name: name, route: route);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
