import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class CupertinoButtonWidget extends BaseSampleStatelessWidget {
  static String name = 'CupertinoButton';
  static String route = '/ui/CupertinoButton';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CupertinoButton(
          child: Text('Click me'),
          onPressed: () {},
        ),
        CupertinoButton.filled(
          child: Text('Click me'),
          onPressed: () {},
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/cupertino_button_widget.dart';
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
