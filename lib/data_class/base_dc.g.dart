// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_dc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BaseDC> _$baseDCSerializer = new _$BaseDCSerializer();

class _$BaseDCSerializer implements StructuredSerializer<BaseDC> {
  @override
  final Iterable<Type> types = const [BaseDC, _$BaseDC];
  @override
  final String wireName = 'BaseDC';

  @override
  Iterable<Object> serialize(Serializers serializers, BaseDC object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(object.code,
            specifiedType: const FullType(int)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.success != null) {
      result
        ..add('success')
        ..add(serializers.serialize(object.success,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  BaseDC deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BaseDCBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$BaseDC extends BaseDC {
  @override
  final int code;
  @override
  final String message;
  @override
  final bool success;

  factory _$BaseDC([void Function(BaseDCBuilder) updates]) =>
      (new BaseDCBuilder()..update(updates)).build();

  _$BaseDC._({this.code, this.message, this.success}) : super._();

  @override
  BaseDC rebuild(void Function(BaseDCBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseDCBuilder toBuilder() => new BaseDCBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseDC &&
        code == other.code &&
        message == other.message &&
        success == other.success;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, code.hashCode), message.hashCode), success.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BaseDC')
          ..add('code', code)
          ..add('message', message)
          ..add('success', success))
        .toString();
  }
}

class BaseDCBuilder implements Builder<BaseDC, BaseDCBuilder> {
  _$BaseDC _$v;

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  BaseDCBuilder();

  BaseDCBuilder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _message = _$v.message;
      _success = _$v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseDC other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BaseDC;
  }

  @override
  void update(void Function(BaseDCBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseDC build() {
    final _$result =
        _$v ?? new _$BaseDC._(code: code, message: message, success: success);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
