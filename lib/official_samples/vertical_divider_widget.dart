import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class VerticalDividerWidget extends BaseSampleStatelessWidget {

  static String name = 'VerticleDivider';
  static String route = '/ui/VerticleDivider';
  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          child: Text('Item1')
        ),
        VerticalDivider(),
        Container(
          child: Text('Item2'),
        ),
        VerticalDivider(),
        Container(
          child: Text('Item3'),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/verticle_divider_widget.dart';
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
