import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class AbsorbPointerWidget extends BaseSampleStatelessWidget {
  static String name = 'AbsorbPointer';
  static String route = '/ui/AbsorbPointer';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        ///参照代码，让 button不可点击
        Column(
          children: <Widget>[
            RaisedButton(
              child: Text('不可点击'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('不可点击'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('不可点击'),
              onPressed: null,
            ),
          ],
        ),
        SizedBox(
          width: 40,
        ),

        ///当absorbing为true时，事件被吸收，按钮的点击事件不可用，一般用来禁止某一片区域的点击事件
        AbsorbPointer(
          absorbing: true,
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text('不可点击'),
                onPressed: () {
                  print('clicked!');
                },
              ),
              RaisedButton(
                child: Text('不可点击'),
                onPressed: () {
                  print('clicked!');
                },
              ),
              RaisedButton(
                child: Text('不可点击'),
                onPressed: () {
                  print('clicked!');
                },
              ),
            ],
          ),
        ),
        SizedBox(
          width: 40,
        ),

        ///当absorbing为false时，按钮的点击事件可用
        AbsorbPointer(
          absorbing: false,
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text('可点击'),
                onPressed: () {
                  print('clicked!');
                },
              ),
              RaisedButton(
                child: Text('可点击'),
                onPressed: () {
                  print('clicked!');
                },
              ),
              RaisedButton(
                child: Text('可点击'),
                onPressed: () {
                  print('clicked!');
                },
              ),
            ],
          ),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/absorb_pointer_widget.dart';
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
