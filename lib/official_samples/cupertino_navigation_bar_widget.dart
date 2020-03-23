import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class CupertinoNavigationBarWidget extends BaseSampleStatelessWidget {
  static String name = 'CupertinoNavigationBar';
  static String route = '/ui/CupertinoNavigationBar';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
            previousPageTitle: 'Home',
            onPressed: () {},
          ),
          middle: const Text('购物车'),
        )
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/cupertino_navigation_bar_widget.dart';
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
