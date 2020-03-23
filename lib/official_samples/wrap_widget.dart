import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class WrapWidget extends BaseSampleStatelessWidget {
  static String name = 'Wrap';
  static String route = '/ui/Wrap';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    ///让超出屏幕宽度的widget自动换行排列
    return Wrap(
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          child: Text('hello flutter'),
        ),RaisedButton(
          onPressed: () {},
          child: Text('hello flutter'),
        ),RaisedButton(
          onPressed: () {},
          child: Text('hello flutter'),
        ),RaisedButton(
          onPressed: () {},
          child: Text('hello flutter'),
        ),RaisedButton(
          onPressed: () {},
          child: Text('hello flutter'),
        ),RaisedButton(
          onPressed: () {},
          child: Text('hello flutter'),
        ),RaisedButton(
          onPressed: () {},
          child: Text('hello flutter'),
        ), RaisedButton(
          onPressed: () {},
          child: Text('hello flutter'),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/wrap_widget.dart';
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
