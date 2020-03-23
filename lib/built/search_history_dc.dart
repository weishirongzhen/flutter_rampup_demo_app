import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutterrampupdemoapp/built/serializers.dart';

part 'search_history_dc.g.dart';

abstract class SearchHistoryDC implements Built<SearchHistoryDC, SearchHistoryDCBuilder> {
  static Serializer<SearchHistoryDC> get serializer => _$searchHistoryDCSerializer;

  SearchHistoryDC._();

  @nullable
  BuiltList<HistoryItem> get histories;

  factory SearchHistoryDC([void Function(SearchHistoryDCBuilder) updates]) = _$SearchHistoryDC;

  String toJson() {
    return jsonEncode(standardSerializers.serializeWith(serializer, this));
  }

  static SearchHistoryDC fromJson(String jsonString) {
    return standardSerializers.deserializeWith(serializer, jsonDecode(jsonString));
  }
}



abstract class HistoryItem implements Built<HistoryItem, HistoryItemBuilder> {
  static Serializer<HistoryItem> get serializer => _$historyItemSerializer;

  HistoryItem._();

  @nullable
  String get name;

  @nullable
  String get route;


  factory HistoryItem([void Function(HistoryItemBuilder) updates]) = _$HistoryItem;

  String toJson() {
    return jsonEncode(standardSerializers.serializeWith(serializer, this));
  }

  static HistoryItem fromJson(String jsonString) {
    return standardSerializers.deserializeWith(serializer, jsonDecode(jsonString));
  }
}

