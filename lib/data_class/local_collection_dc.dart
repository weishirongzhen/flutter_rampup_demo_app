import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutterrampupdemoapp/built/serializers.dart';

part 'local_collection_dc.g.dart';

abstract class LocalCollectionDC implements Built<LocalCollectionDC, LocalCollectionDCBuilder> {
  static Serializer<LocalCollectionDC> get serializer => _$localCollectionDCSerializer;

  LocalCollectionDC._();

  @nullable
  BuiltList<String> get articleId;

  @nullable
  BuiltList<String> get widgetName;

  factory LocalCollectionDC([void Function(LocalCollectionDCBuilder) updates]) = _$LocalCollectionDC;

  String toJson() {
    return jsonEncode(standardSerializers.serializeWith(serializer, this));
  }

  static LocalCollectionDC fromJson(String jsonString) {
    return standardSerializers.deserializeWith(serializer, jsonDecode(jsonString));
  }
}
