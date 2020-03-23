import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class IntrinsicWidthWidget extends BaseSampleStatelessWidget {
  static String name = 'IntrinsicWidth';
  static String route = '/ui/IntrinsicWidth';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    //这个控件比较消耗性能，不建议使用
    //如果child的宽度不足50， 则强制为50， 如果 超过50， 则为50的倍数  100，超过100，则为 150， 类推
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 50,
          height: 100,
          color: Colors.blue,
          child: Text('代码width = 50'),
        ),
        IntrinsicWidth(
          stepWidth: 50,
          child: Container(
            width: 1,
            height: 100,
            color: Colors.green,
            child: Text(
              '代码width = 1， 但是由于stepWidth = 50， 这里被强制拉伸为50',
              style: TextStyle(fontSize: 10),
            ),
          ),
        ),
        IntrinsicWidth(
          stepWidth: 50,
          child: Container(
            width: 51,
            height: 100,
            color: Colors.blueGrey,
            child: Text(
              '代码width = 51， 但是由于stepWidth = 50， 这里被强制拉伸为大于为50的倍率，即100',
              style: TextStyle(fontSize: 10),
            ),
          ),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/intrinsic_width_widget.dart';
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
