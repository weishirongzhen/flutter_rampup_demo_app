import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class LinearProgressIndicatorWidget extends BaseSampleStatelessWidget {
  static String name = 'LinearProgressIndicator';
  static String route = '/ui/LinearProgressIndicator';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              height: 20,
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          LinearProgressIndicator(
            value: 0.5, //取值范围 0-1 可根据实际应用场景更新进度，例如下载
          ),
          SizedBox(
            height: 20,
          ),
          LinearProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/linear_progress_indicator_widget.dart';
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
