import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';
//<code>
///跟之前的 CustomScrollView  有点类似， 但是可扩展性更强
class NestedScrollViewWidget extends BaseSampleStatefulWidget {
  static String name = 'NestedScrollView';
  static String route = '/ui/NestedScrollView';

  @override
  BaseSampleStatefulWidgetState createState() => _NestedScrollViewWidget();
}

class _NestedScrollViewWidget extends BaseSampleStatefulWidgetState<NestedScrollViewWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/nested_scroll_view_widget.dart';
  }

  @override
  String getTitle() {
    return NestedScrollViewWidget.name;
  }


  List<String> _tabs = ['One', 'Two', 'Three'];

  @override
  Widget buildBody(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length, // This is the number of tabs.
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              child: SliverAppBar(
                title: const Text('Books'), // This is the title in the app bar.
                pinned: true,
                expandedHeight: 250.0,
                forceElevated: innerBoxIsScrolled,
                bottom: TabBar(
                  // These are the widgets to put in each tab in the tab bar.
                  tabs: _tabs.map((String name) => Tab(text: name)).toList(),
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          // These are the contents of the tab views, below the tabs.
          children: _tabs.map((String name) {
            return SafeArea(
              top: false,
              bottom: false,
              child: Builder(
                builder: (BuildContext context) {
                  return CustomScrollView(
                    key: PageStorageKey<String>(name),
                    slivers: <Widget>[
                      SliverOverlapInjector(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                      ),
                      SliverPadding(
                        padding: const EdgeInsets.all(8.0),
                        sliver: SliverFixedExtentList(
                          itemExtent: 48.0,
                          delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                              return ListTile(
                                title: Text('Item $index'),
                              );
                            },
                            childCount: 30,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
//<code>
}
