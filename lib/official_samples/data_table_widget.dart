import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class DataTableWidget extends BaseSampleStatelessWidget {
  static String name = 'DataTable';
  static String route = '/ui/DataTable';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return ListView(children: <Widget>[
      Center(
          child: Text(
        'Students',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),
      DataTable(
        columns: [
          DataColumn(label: Text('RollNo')),
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Class')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('1')),
            DataCell(Text('Arya')),
            DataCell(Text('6')),
          ]),
          DataRow(cells: [
            DataCell(Text('12')),
            DataCell(Text('John')),
            DataCell(Text('9')),
          ]),
          DataRow(cells: [
            DataCell(Text('42')),
            DataCell(Text('Tony')),
            DataCell(Text('8')),
          ]),
        ],
      ),
    ]);
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/data_table_widget.dart';
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
