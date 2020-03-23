import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class CustomScrollViewWidget extends BaseSampleStatelessWidget {
  static String name = 'CustomScrollView';
  static String route = '/ui/CustomScrollView';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('可选标题'),
            background: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/butterfly.webp'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('grid item $index'),
              );
            },
            childCount: 20,
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('list item $index'),
              );
            },
          ),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/custom_scroll_view_widget.dart';
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
