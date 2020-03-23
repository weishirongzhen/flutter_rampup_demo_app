import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ColumnWidget extends BaseSampleStatelessWidget {
  static String name = 'Column';
  static String route = '/ui/column';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return ListView(
      children: <Widget>[
        Container(
          color: Colors.blueGrey,

          ///居左排列
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                color: Colors.lightBlue,
                child: Text('Text1'),
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.red,
                child: Text('Text2'),
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.grey,
                child: Text('Text3'),
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.pinkAccent,
                child: Text('Text4'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.lightGreenAccent,

          ///居中排列
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                color: Colors.lightBlue,
                child: Text('Text5'),
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.red,
                child: Text('Text6'),
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.grey,
                child: Text('Text7'),
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.pinkAccent,
                child: Text('Text8'),
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
    return 'lib/official_samples/column_widget.dart';
  }

  @override
  String getTitle() {
    return name;
  }

  @override
  String getDemoUrl() {
    return 'https://juejin.im/post/5c6a5892e51d4542331c5528';
  }
}
