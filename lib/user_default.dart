import 'package:flutterrampupdemoapp/data_class/local_collection_dc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserDefault {
  static SharedPreferences pre;

  static Future init() async {
    pre = await SharedPreferences.getInstance();
    return Future.value(null);
  }

  /////////////////////////

  static Future<bool> clearAll() async {
    return pre.clear();
  }



  static void setWidgetPageIsFirstOpen(bool isFirstOpen) async {
    await pre.setBool("widgetPageisFirstOpen", isFirstOpen);
  }

  static bool isWidgetPageFirstOpen() {
    return pre.getBool("widgetPageisFirstOpen") ?? true;
  }

  static void setArticlePageIsFirstOpen(bool isFirstOpen) async {
    await pre.setBool("articlePageisFirstOpen", isFirstOpen);
  }

  static bool isArticlePageFirstOpen() {
    return pre.getBool("articlePageisFirstOpen") ?? true;
  }




  static void saveLocalCollection(LocalCollectionDC localCollectionDC) async {
    if (localCollectionDC == null) return;
    await pre.setString('local_collection', localCollectionDC.toJson());
  }

  static LocalCollectionDC getLocalCollection() {
    final a = pre.getString('local_collection') ?? '';
    if (a.isNotEmpty) {
      return LocalCollectionDC.fromJson(a);
    } else {
      return LocalCollectionDC();
    }
  }

  static void saveLastWidgetPosition(double position) async {
    await pre.setDouble('widget_position', position);
  }

  static double getLastWidgetPosition() {
    return pre.getDouble('widget_position') ?? 0;
  }

  static void saveLastArticlePosition(double position) async {
    await pre.setDouble('article_position', position);
  }

  static double getLastArticlePosition() {
    return pre.getDouble('article_position') ?? 0;
  }

  static void saveRememberLastPosition(bool keep) async {
    pre.setBool("keep_position", keep);
  }

  static bool isRememberLastPosition({bool defaultValue = true}) {
    return pre.getBool("keep_position") ?? defaultValue;
  }

}
