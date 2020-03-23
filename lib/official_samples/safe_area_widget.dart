import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class SafeAreaWidget extends BaseSampleStatelessWidget {
  static String name = 'SafeArea';
  static String route = '/ui/SafeArea';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text('需要在全面屏手机查看，才会看出效果，如刘海屏，或者 iphone x系列的底部，这个控件会让显示范围不在刘海里，或者被底部提示条里'),
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/safe_area_widget.dart';
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
