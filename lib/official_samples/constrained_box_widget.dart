import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ConstrainedBoxWidget extends BaseSampleStatelessWidget {
  static String name = 'ConstrainedBox';
  static String route = '/ui/ConstrainedBox';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        ///约束 子Widget 最大宽度不超过120， 且最小高度大于100
        Container(
          color: Colors.blueGrey,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 120,
              minHeight: 300,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Hello Flutter ' * 3),
                Container(
                  color: Colors.brown,
                  height: 40,
                  width: 400,
                )
              ],
            ),
          ),
        )
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/constrained_box_widget.dart';
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
