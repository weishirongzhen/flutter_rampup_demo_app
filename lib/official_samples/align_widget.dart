import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class AlignWidget extends BaseSampleStatelessWidget {
  static String name = 'Align';
  static String route = '/ui/Align';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        Container(
          height: 150,
          width: 200,
          color: Colors.blue,

          ///让text内容在container的顶部居右
          child: Align(
            alignment: Alignment.topRight,
            child: Text(
              'Hello Flutter1',
              style: TextStyle(
                backgroundColor: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 150,
          width: 200,
          color: Colors.blue,

          ///让text内容在container的底部居左
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Hello Flutter2',
              style: TextStyle(
                backgroundColor: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ),

        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 50,
        ),

        ///宽度为原始的0.7倍， 此时Text 位置已经改变， 更多请参考 ClipRect
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              widthFactor: 0.7,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.pinkAccent,
              ),
            ),
            Text("Hello Flutter"),
          ],
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/align_widget.dart';
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
