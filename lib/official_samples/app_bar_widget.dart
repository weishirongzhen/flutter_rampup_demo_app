import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class AppBarWidget extends BaseSampleStatelessWidget {
  static String name = 'AppBar';
  static String route = '/ui/AppBar';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('上面这个也是AppBar'),
            Icon(Icons.arrow_upward),
          ],
        ),
        Expanded(
          ///配合Scaffold使用
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepPurple,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {},
              ),
              title: const Text('AppBar'),
              automaticallyImplyLeading: false,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.email),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/app_bar_widget.dart';
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
