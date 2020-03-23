import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class SpacerWidget extends BaseSampleStatelessWidget {

  static String name = 'Spacer';
  static String route = '/ui/Spacer';
  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Row(children: <Widget>[
      Text('one'),
      Spacer(),
      Text('two'),
    ],);
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/spacer_widget.dart';
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
