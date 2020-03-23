import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class StackWidget extends BaseSampleStatelessWidget {
  static String name = 'Stack';
  static String route = '/ui/Stack';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Stack(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 90,
          height: 90,
          color: Colors.green,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.blue,
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/stack_widget.dart';
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
