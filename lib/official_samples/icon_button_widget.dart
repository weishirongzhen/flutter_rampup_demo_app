import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class IconButtonWidget extends BaseSampleStatelessWidget {
  static String name = 'IconButton';
  static String route = '/ui/IconButton';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings),
          iconSize: 100,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings),
          color: Colors.blue,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings),
          color: Colors.blue,
          iconSize: 80,
          splashColor: Colors.red,
          highlightColor: Colors.red,
        ),
        Text('可点击的Icon')
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/icon_button_widget.dart';
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
