import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class RotatedBoxWidget extends BaseSampleStatelessWidget {
  static String name = 'RotatedBox';
  static String route = '/ui/RotatedBox';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Center(
      ///1个quarterTurns 为一刻钟的角度，即90度
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RotatedBox(
            quarterTurns: 1,
            child: const Text('Hello Flutter'),
          ),
          RotatedBox(
            quarterTurns: 2,
            child: const Text('Hello Flutter'),
          ),
          RotatedBox(
            quarterTurns: 3,
            child: const Text('Hello Flutter'),
          ),
          RotatedBox(
            quarterTurns: 4,
            child: const Text('Hello Flutter'),
          ),
        ],
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/rotated_box_widget.dart';
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
