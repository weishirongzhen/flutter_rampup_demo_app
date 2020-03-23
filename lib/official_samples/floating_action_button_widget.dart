import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class FloatingActionButtonWidget extends BaseSampleStatelessWidget {
  static String name = 'FloatingActionButton';
  static String route = '/ui/FloatingActionButton';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return SafeArea(
      child: Scaffold(
        ///直接在 Scaffold中使用
        floatingActionButton: FloatingActionButton(
          child: Text('Click'),
          onPressed: () {},
        ),

        ///自由使用
        body: Column(
          children: <Widget>[
            FloatingActionButton(
              child: Text('Click'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/floating_action_button_widget.dart';
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
