import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class FlatButtonWidget extends BaseSampleStatelessWidget {
  static String name = 'FlatButton';
  static String route = '/ui/FlatButton';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        SizedBox(
          height: 40,
        ),

        ///扁平风格按钮， 默认白色
        FlatButton(
          onPressed: () {},
          child: Text('Click me'),
        ),

        ///扁平风格按钮， 蓝色背景
        FlatButton(
          color: Colors.blue,
          onPressed: () {},
          child: Text('Click me'),
        ),

        ///如果要让按钮不可点击， 可以让  onPressed = null
        FlatButton(
          color: Colors.blue,
          onPressed: null,
          child: Text('disable'),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/flat_button_widget.dart';
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
