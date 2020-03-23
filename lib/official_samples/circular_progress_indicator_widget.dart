import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class CircularProgressIndicatorWidget extends BaseSampleStatelessWidget {
  static String name = 'CircularProgressIndicator';
  static String route = '/ui/CircularProgressIndicator';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    ///异常简单，通过多个组合可以做出一些效果
    return Center(
        child: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SizedBox(
          width: 60,
          height: 60,
          child: CircularProgressIndicator(),
        ),
        SizedBox(
          width: 80,
          height: 80,
          child: CircularProgressIndicator(
            strokeWidth: 1,
            backgroundColor: Colors.grey,
          ),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: CircularProgressIndicator(
            strokeWidth: 20,
          ),
        ),
      ],
    ));
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/circular_progress_indicator_widget.dart';
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
