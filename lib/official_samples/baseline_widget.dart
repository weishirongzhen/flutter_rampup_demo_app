import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class BaselineWidget extends BaseSampleStatelessWidget {
  static String name = 'Baseline';
  static String route = '/ui/Baseline';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        Divider(
          height: 0,
          color: Colors.red,
        ),
        Row(
          children: <Widget>[
            Baseline(
                baseline: 0,
                // 对齐的对象类型
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  'hello',
                )),
            Baseline(
                baseline: 20,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  'flutter',
                )),
            Baseline(
                baseline: 50,
                // 对齐的对象类型
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  'hello',
                )),
            Baseline(
                baseline: 80,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  'flutter',
                )),
            Baseline(
                baseline: 90,
                // 对齐的对象类型
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  'hello',
                )),
            Baseline(
                baseline: 100,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  'flutter',
                )),
          ],
        ),
        Divider(
          height: 0,
          color: Colors.red,
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/baseline_widget.dart';
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
