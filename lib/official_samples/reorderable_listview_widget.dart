import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class ReorderableListViewWidget extends BaseSampleStatefulWidget {
  static String name = 'ReorderableListView';
  static String route = '/ui/ReorderableListView';

  @override
  BaseSampleStatefulWidgetState createState() => _ReorderableListViewWidget();
}

class _ReorderableListViewWidget extends BaseSampleStatefulWidgetState<ReorderableListViewWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/reorderable_listview_widget.dart';
  }

  @override
  String getTitle() {
    return ReorderableListViewWidget.name;
  }

  //<code>

  List<String> myItems = ["长按我拖动1", "长按我拖动2", "长按我拖动3", "长按我拖动4", "长按我拖动5", "长按我拖动6"];

  void _changeOrder(int oldIndex, int newIndex) {
    final oldItem = myItems[oldIndex];
    myItems[oldIndex] = myItems[newIndex];
    myItems[newIndex] = oldItem;
  }

  @override
  Widget buildBody(BuildContext context) {
    return ReorderableListView(
      onReorder: (oldIndex, newIndex) {
        setState(() {
          _changeOrder(oldIndex, newIndex);
        });
      },
      header: Text('可交换位置的ListView'),
      children: <Widget>[
        for (final item in myItems)
          ListTile(
            key: ValueKey(item),
            title: Text(item),
          )
      ],
    );
  }
//<code>
}
