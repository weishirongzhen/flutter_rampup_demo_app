import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ButtonBarWidget extends BaseSampleStatelessWidget {
  static String name = 'ButtonBar';
  static String route = '/ui/ButtonBar';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        ///默认排序
        ButtonBar(
          children: <Widget>[
            FlatButton(
              child: Text('Ok'),
              color: Colors.blue,
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Cancel'),
              color: Colors.red,
              onPressed: () {},
            ),
          ],
        ),

        ///spaceEvenly排列
        ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              child: Text('Ok'),
              color: Colors.blue,
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Cancel'),
              color: Colors.red,
              onPressed: () {},
            ),
          ],
        ),

        ///spaceAround 排列
        ButtonBar(
          alignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FlatButton(
              child: Text('Ok'),
              color: Colors.blue,
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Cancel'),
              color: Colors.red,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/button_bar_widget.dart';
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
