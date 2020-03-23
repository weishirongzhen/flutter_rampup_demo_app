import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class OutlineButtonWidget extends BaseSampleStatelessWidget {
  static String name = 'OutlineButton';
  static String route = '/ui/OutlineButton';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Center(
      child: OutlineButton(
        onPressed: () {},
        child: Text('Click me'),
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/outline_button_widget.dart';
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
