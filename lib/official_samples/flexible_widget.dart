import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class FlexibleWidget extends BaseSampleStatelessWidget {
  static String name = 'Flexible';
  static String route = '/ui/Flexible';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        ///与Expanded组件不同，它不强制子组件填充可用空间。但是可以纵向拉伸
        Container(
          width: 100,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  child: Text('flex = 1'),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.grey,
                  child: Text('flex = 2'),
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  color: Colors.green,
                  child: Text('flex = 3'),
                ),
              ),
              Flexible(
                flex: 5,
                child: Container(
                  color: Colors.brown,
                  child: Text('flex = 5'),
                ),
              )
            ],
          ),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/flexible_widget.dart';
  }

  @override
  String getTitle() {
    return name;
  }

  @override
  String getDemoUrl() {
    return 'https://www.jianshu.com/p/cb007e5426a3';
  }
}
