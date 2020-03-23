import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutterrampupdemoapp/built/serializers.dart';
part 'base_dc.g.dart';

abstract class BaseDC implements Built<BaseDC, BaseDCBuilder> {
  static Serializer<BaseDC> get serializer => _$baseDCSerializer;

  BaseDC._();

  @nullable
  int get code;

  @nullable
  String get message;

  @nullable
  bool get success;

  factory BaseDC([void Function(BaseDCBuilder) updates]) = _$BaseDC;

  String toJson() {
    return jsonEncode(standardSerializers.serializeWith(serializer, this));
  }

  static BaseDC fromJson(String jsonString) {
    return standardSerializers.deserializeWith(serializer, jsonDecode(jsonString));
  }
}

