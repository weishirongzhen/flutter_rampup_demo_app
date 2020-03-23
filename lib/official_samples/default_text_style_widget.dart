import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class DefaultTextStyleWidget extends BaseSampleStatelessWidget {
  static String name = 'DefaultTextStyle';
  static String route = '/ui/DefaultTextStyle';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    ///统一为后代Widget设置统一属性
    return Container(
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: 60,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        child: Column(
          children: <Widget>[
            Text('Flutter1'),

            ///可单独override某个属性
            Text(
              'Flutter2',
              style: TextStyle(fontSize: 30),
            ),
            Container(
              child: Text('Flutter3'),
            ),
          ],
        ),
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/default_text_style_widget.dart';
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
