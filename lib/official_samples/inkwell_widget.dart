import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class InkWellWidget extends BaseSampleStatelessWidget {
  static String name = 'InkWell';
  static String route = '/ui/InkWell';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        ///基本用法
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Click me1'),
          ),
        ),

        ///自定义圆角
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Click me2'),
          ),
        ),

        ///自定义水波纹半径最大值
        InkWell(
          splashColor: Colors.black,
          highlightColor: Colors.red.withOpacity(0.4),
          radius: 50,
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Long Click Me3'),
          ),
        ),

        ///自定义水波纹颜色和high light颜色
        InkWell(
          splashColor: Colors.red,
          highlightColor: Colors.blue.withOpacity(0.4),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Click me4'),
          ),
        ),

        ///InkWell 与带背景色Container使用时，会导致看不到水波纹的问题，下面是一种解决方案
        ///错误的例子,看不到水波纹
        Container(
          color: Colors.green,
          child: InkWell(
            splashColor: Colors.red,
            highlightColor: Colors.blue.withOpacity(0.4),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Click me5'),
            ),
          ),
        ),

        ///正确的例子
        Container(
          child: Ink(
            color: Colors.green,
            child: InkWell(
              splashColor: Colors.red,
              highlightColor: Colors.blue.withOpacity(0.4),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Click me6'),
              ),
            ),
          ),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/inkwell_widget.dart';
  }

  @override
  String getTitle() {
    return name;
  }

  @override
  String getDemoUrl() {
    return 'https://juejin.im/post/5c1c813ee51d452429741587';
  }
}
