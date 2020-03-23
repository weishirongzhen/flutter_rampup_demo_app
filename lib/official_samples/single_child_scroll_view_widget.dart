import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class SingleChildScrollViewWidget extends BaseSampleStatelessWidget {
  static String name = 'SingleChildScrollView';
  static String route = '/ui/SingleChildScrollView';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    ///让超过屏幕高度的控件可滚动
    return Container(
      height: 200,
      child: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Text(
            'hello flutter1',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'hello flutter2',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'hello flutter3',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'hello flutter4',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'hello flutter5',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'hello flutter6',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'hello flutter7',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'hello flutter8',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'hello flutter9',
            style: TextStyle(fontSize: 30),
          ),
        ],
      )),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/single_child_scroll_view_widget.dart';
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
