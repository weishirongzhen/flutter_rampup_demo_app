import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class MediaQueryWidget extends BaseSampleStatelessWidget {
  static String name = 'MediaQuery';
  static String route = '/ui/MediaQuery';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        ListTile(
          title: Text("屏幕宽度 ${MediaQuery.of(context).size.width} 个逻辑像素"),
        ),
        ListTile(
          title: Text("屏幕高度 ${MediaQuery.of(context).size.height} 个逻辑像素"),
        ),
        ListTile(
          title: Text("屏幕宽高比 ${MediaQuery.of(context).size.aspectRatio}"),
        ),
        ListTile(
          title: Text("屏幕逻辑像素 ${MediaQuery.of(context).devicePixelRatio}"),
        ),
        ListTile(
          title: Text("时间格式是否24小时制 ${MediaQuery.of(context).alwaysUse24HourFormat}"),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/media_query_widget.dart';
  }

  @override
  String getTitle() {
    return name;
  }

  @override
  String getDemoUrl() {
    return '';
  }
}
