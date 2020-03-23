import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ExpandedWidget extends BaseSampleStatelessWidget {
  static String name = 'Expanded';
  static String route = '/ui/Expanded';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple,
            ),

            ///用于占满剩余空间
            Expanded(
              child: Container(
                height: 100,
                color: Colors.green,
                child: Center(child: Text('Expanded区域')),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            ///用作weight分隔
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                color: Colors.lightBlue,
                child: Center(child: Text('1份')),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                color: Colors.red,
                child: Center(child: Text('1份')),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                color: Colors.grey,
                child: Center(child: Text('2份')),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 100,
                color: Colors.brown,
                child: Center(child: Text('3份')),
              ),
            )
          ],
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/expanded_widget.dart';
  }

  @override
  String getTitle() {
    return name;
  }

  @override
  String getDemoUrl() {
    return 'https://juejin.im/post/5ccef90d6fb9a03217283221';
  }
}
