import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class CenterWidget extends BaseSampleStatelessWidget {
  static String name = 'Center';
  static String route = '/ui/Center';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Container(
      ///默认text位于Container左上角，添加 Center让text居中
      child: Center(
        child: Text('Hello Flutter'),
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/center_widget.dart';
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
