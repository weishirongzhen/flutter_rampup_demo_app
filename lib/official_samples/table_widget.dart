import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class TableWidget extends BaseSampleStatelessWidget {

  static String name = 'Table';
  static String route = '/ui/Table';
  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Table(
      children: const <TableRow>[
        TableRow(
          children: <Widget>[
            Text('AAAAAA'), Text('B'), Text('C'),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text('D'), Text('EEE'), Text('F'),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text('G'), Text('H'), Text('III'),
          ],
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/table_widget.dart';
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
