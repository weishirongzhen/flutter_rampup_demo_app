import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class AppBarWidget extends BaseSampleStatefulWidget {
  static String name = 'AppBar';
  static String route = '/ui/AppBar';

  @override
  BaseSampleStatefulWidgetState createState() => _AppBarWidget();
}

class _AppBarWidget extends BaseSampleStatefulWidgetState<AppBarWidget> {
  @override
  String getFilePath() {
    return 'lib/ui/official_samples/app_bar_widget.dart';
  }

  @override
  String getTitle() {
    return AppBarWidget.name;
  }

  //<code>

  @override
  Widget buildBody(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: TabController(length: 3,vsync: this),
          tabs: <Widget>[
            Tab(child: Text('one')),
            Tab(child: Text('two')),
            Tab(child: Text('three')),
          ],
        ),
        backgroundColor: Colors.brown,
        toolbarOpacity: 0.9,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text('AppBar'),
        centerTitle: true,
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
    );
  }
//<code>
}
