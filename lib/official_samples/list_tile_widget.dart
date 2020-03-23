import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ListTileWidget extends BaseSampleStatelessWidget {
  static String name = 'ListTile';
  static String route = '/ui/ListTile';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('标题'),
          subtitle: Text('副标题'),
          onTap: () {},
        ),
        Divider(
          height: 1,
        ),
        ListTile(
          title: Text('标题'),
          subtitle: Text('副标题' * 10),
          onTap: () {},
        ),
        Divider(
          height: 1,
        ),
        ListTile(
          title: Text('标题'),
          onTap: () {},
        ),
        Divider(
          height: 1,
        ),
        ListTile(
          title: Text('标题'),
          subtitle: Text('副标题'),
          leading: Icon(Icons.toys),
          trailing: Icon(Icons.chevron_right),
          onTap: () {},
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/list_tile_widget.dart';
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
