import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class SizedBoxWidget extends BaseSampleStatelessWidget {
  static String name = 'SizedBox';
  static String route = '/ui/sizedBox';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        ///定义一个固定大小的区域
        SizedBox(
          width: 200,
          height: 100,
          child: Container(
            color: Colors.lightBlue,
          ),
        ),

        ///作为分隔线使用
        SizedBox(
          height: 30,
        ),

        ///调整按钮大小
        SizedBox(
          width: 50,
          height: 30,
          child: FlatButton(
            onPressed: () {},
            color: Colors.lightBlue,
            child: Text('ok'),
          ),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/sized_box_widget.dart';
  }

  @override
  String getTitle() {
    return name;
  }

  @override
  String getDemoUrl() {
    return 'https://juejin.im/post/5c2723d9f265da611a47f137';
  }
}
