import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class SliverAppBarWidget extends BaseSampleStatelessWidget {
  static String name = 'SliverAppBar';
  static String route = '/ui/SliverAppBar';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 150.0,
          flexibleSpace: const FlexibleSpaceBar(
            title: Text('SliverAppBar 示例'),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              Container(
                height: 1200.0,
                color: Colors.teal,
                child: Center(child: Text('向上滑动我')),
              ),
            ],
          ),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/sliver_app_bar_widget.dart';
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
