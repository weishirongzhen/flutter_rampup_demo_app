import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ListWheelScrollViewWidget extends BaseSampleStatelessWidget {
  static String name = 'ListWheelScrollView';
  static String route = '/ui/ListWheelScrollView';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return ListWheelScrollView(
      diameterRatio: 1.5,
      itemExtent: 42,
      offAxisFraction: 1.5,
      children: <Widget>[
        for (int i = 0; i < 100; i++)
          Container(
            height: 400,
            width: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue),
          ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/list_wheel_scroll_view_widget.dart';
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
