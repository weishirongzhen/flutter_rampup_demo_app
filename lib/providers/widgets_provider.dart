import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples.dart';
import 'package:flutterrampupdemoapp/sample_detail.dart';
import 'package:flutterrampupdemoapp/user_default.dart';

class WidgetsCollectionProvider with ChangeNotifier {
  List<SampleDetail> _collectionWidgetsList = List();

  List<SampleDetail> get collectionWidgetsList => _collectionWidgetsList;

  void addWidgetToCollection(String widgetName) async {
    if (!isWidgetInCollection(widgetName)) {
      final collection = UserDefault.getLocalCollection();
      final newCollection = collection.rebuild((update) => update.widgetName.addAll([widgetName]));
      UserDefault.saveLocalCollection(newCollection);
      notifyListeners();
    }
  }

  void removeWidgetFromCollection(String widgetName) async {
    final collection = UserDefault.getLocalCollection();
    final newCollection = collection.rebuild((update) => update.widgetName.remove(widgetName));
    UserDefault.saveLocalCollection(newCollection);
    filterCollectionWidget();
  }

  bool isWidgetInCollection(String widgetName) {
    if (UserDefault.getLocalCollection() != null && UserDefault.getLocalCollection().widgetName != null) {
      return UserDefault.getLocalCollection().widgetName.contains(widgetName);
    } else {
      return false;
    }
  }

  void filterCollectionWidget() {
    final coll = UserDefault.getLocalCollection();
    if (coll != null && coll.widgetName != null) {
      final list = UserDefault.getLocalCollection().widgetName.toList();
      _collectionWidgetsList = OfficialSamples().sample.where((element) => list.contains(element.name)).toList();
      notifyListeners();
    }
  }
}
