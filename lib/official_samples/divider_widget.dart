import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class DividerWidget extends BaseSampleStatelessWidget {
  static String name = 'Divider';
  static String route = '/ui/Divider';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        Text('HelloFlutter1'),

        ///分割线颜色
        Divider(
          color: Colors.blueGrey,
        ),
        Text('HelloFlutter2'),

        ///分割线宽度
        Divider(
          thickness: 10,
        ),
        Text('HelloFlutter3'),

        ///分割线左边距
        Divider(
          thickness: 10,
          indent: 10,
        ),
        Text('HelloFlutter4'),

        ///分割线右边距
        Divider(
          thickness: 3,
          endIndent: 30,
        ),
        Text('HelloFlutter5'),

        Divider(
          thickness: 5,
          color: Colors.pinkAccent,
        ),


      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/divider_widget.dart';
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
