import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class LimitedBoxWidget extends BaseSampleStatelessWidget {
  static String name = 'LimitedBox';
  static String route = '/ui/LimitedBox';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    ///设置最大宽度 或高度
    return Row(children: [
      Container(
        color: Colors.blue,
        width: 100.0,
      ),
      LimitedBox(
        maxWidth: 150.0, //子控件不会超过这个宽度，尽管设置的是1000
        child: Container(
          color: Colors.lightGreen,
          width: 1000.0,
        ),
      ),
    ]);

    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/limited_box_widget.dart';
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
