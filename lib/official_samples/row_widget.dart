import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class RowWidget extends BaseSampleStatelessWidget {
  static String name = 'Row';
  static String route = '/ui/row';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      //排除Column默认居中对齐的干扰
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ///居中显示
        Container(
          color: Colors.lightGreen,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(" Hello, Flutter! "),
              Text(" How are you?  "),
            ],
          ),
        ),

        ///占用最小宽度
        Container(
          color: Colors.lightBlue,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(" Hello, Flutter! "),
              Text(" How are you?  "),
            ],
          ),
        ),

        ///右至左排列
        Container(
          color: Colors.pinkAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text(" Hello, Flutter! "),
              Text(" How are you?  "),
            ],
          ),
        ),

        ///文字大小不一时， 小字的位置
        ///enum VerticalDirection {
        //  /// Boxes should start at the bottom and be stacked vertically towards the top.
        //  ///
        //  /// The "start" is at the bottom, the "end" is at the top.
        //  up,
        //
        //  /// Boxes should start at the top and be stacked vertically towards the bottom.
        //  ///
        //  /// The "start" is at the top, the "end" is at the bottom.
        //  down,
        ///}
        Container(
          color: Colors.green,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text(
                " Hello, Flutter! ",
                style: TextStyle(fontSize: 30.0),
              ),
              Text(" How are you?  "),
            ],
          ),
        ),

        ///文字大小不一时， 小字的位置
        Container(
          color: Colors.deepPurpleAccent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Text(
                " Hello, Flutter! ",
                style: TextStyle(fontSize: 30.0),
              ),
              Text(" How are you?  "),
            ],
          ),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/row_widget.dart';
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
