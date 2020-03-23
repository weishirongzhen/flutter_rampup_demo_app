import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class OverflowBoxWidget extends BaseSampleStatelessWidget {
  static String name = 'OverflowBox';
  static String route = '/ui/OverflowBox';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Container(
      width: 200.0,
      height: 200.0,
      color: Colors.blue[50],
      child: Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          width: 0.0,
          height: 0.0,
          child: OverflowBox(
            minWidth: 0,
            maxWidth: 80.0,
            minHeight: 0,
            maxHeight: 80.0,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/overflow_box_widget.dart';
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
