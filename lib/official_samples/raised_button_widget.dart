import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class RaisedButtonWidget extends BaseSampleStatelessWidget {
  static String name = 'RaisedButton';
  static String route = '/ui/RaisedButton';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 30),
        RaisedButton(
          onPressed: () {},
          child: const Text('Click me'),
        ),
        const SizedBox(height: 30),
        RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          onPressed: () {},
          padding: const EdgeInsets.all(0.0),
          child: const Text('Click me'),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/raised_button_widget.dart';
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
