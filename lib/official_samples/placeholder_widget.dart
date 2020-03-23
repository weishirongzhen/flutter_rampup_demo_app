import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class PlaceholderWidget extends BaseSampleStatelessWidget {
  static String name = 'Placeholder';
  static String route = '/ui/Placeholder';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.white,
          child: Placeholder(
            color: Colors.blue[50],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 200,
          height: 100,
          color: Colors.white,
          child: Placeholder(
            color: Colors.red,
          ),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/placeholder_widget.dart';
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
