import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class IntrinsicHeightWidget extends BaseSampleStatelessWidget {
  static String name = 'IntrinsicHeight';
  static String route = '/ui/IntrinsicHeight';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    //这个控件比较消耗性能，不建议使用
    //需要结合IntrinsicWidth使用 如果child的高度不足50， 则强制为50， 如果 超过50， 则为50的倍数  100，超过100，则为 150， 类推
    return Column(
      children: <Widget>[
        Container(
          width: 100,
          height: 50,
          color: Colors.blue,
          child: Text('代码height = 50'),
        ),
        IntrinsicWidth(
          stepHeight: 50,
          child: IntrinsicHeight(

            child: Container(
              width: 100,
              height: 1,
              color: Colors.green,
              child: Text(
                '代码height = 1， 但是由于stepHeight = 50， 这里被强制拉伸为50',
                style: TextStyle(fontSize: 8),
              ),
            ),
          ),
        ),
        IntrinsicHeight(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blueGrey,
            child: Text(
              '代码height = 51， 但是由于stepHeight = 50， 这里被强制拉伸为大于为50的倍率，即100',
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
