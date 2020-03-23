import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class BaselineWidget extends BaseSampleStatelessWidget {

  static String name = 'Baseline';
  static String route = '/ui/Baseline';
  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Center(
      child: Container(
        color: Colors.blue,
        height: 120.0,
        width: 120.0,
        child: Baseline(
          child: Container(
            color: Colors.red,
            height: 60.0,
            width: 60.0,
          ),
          baseline: 30,
          baselineType: TextBaseline.alphabetic,
        ),
      ),
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
