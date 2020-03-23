import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class BottomAppBarWidget extends BaseSampleStatelessWidget {
  static String name = 'BottomAppBar';
  static String route = '/ui/BottomAppBar';

  @override
  Widget buildBody(BuildContext context) {
    //<code>

    ///底部栏
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        child: Text('Hello Flutter'),
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/bottom_app_bar_widget.dart';
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
