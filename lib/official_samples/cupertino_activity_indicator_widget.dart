import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class CupertinoActivityIndicatorWidget extends BaseSampleStatelessWidget {
  static String name = 'CupertinoActivityIndicator';
  static String route = '/ui/CupertinoActivityIndicator';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        CupertinoActivityIndicator(),
        CupertinoActivityIndicator(
          radius: 20,
        ),
        CupertinoActivityIndicator(
          radius: 40,
        ),
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            CupertinoActivityIndicator(),
            CupertinoActivityIndicator(
              radius: 20,
            ),
            CupertinoActivityIndicator(
              radius: 50,
            ),
          ],
        )
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/cupertino_activity_indicator_widget.dart';
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
