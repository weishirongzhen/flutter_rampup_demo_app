import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class DismissibleWidget extends BaseSampleStatefulWidget {
  static String name = 'Dismissible';
  static String route = '/ui/Dismissible';

  @override
  BaseSampleStatefulWidgetState createState() => _DismissibleWidget();
}

class _DismissibleWidget extends BaseSampleStatefulWidgetState<DismissibleWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/dismissible_widget.dart';
  }

  @override
  String getTitle() {
    return DismissibleWidget.name;
  }

  //<code>
  final items = List<String>.generate(10, (i) => "左右拖动我 ${i + 1}");

  @override
  Widget buildBody(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Dismissible(
          key: Key(item),
          onDismissed: (direction) {
            setState(() {
              items.removeAt(index);
            });
          },
          background: Container(
            alignment: Alignment.centerLeft,
            color: Colors.red,
            child: Icon(Icons.cancel),
          ),
          secondaryBackground: Container(
            alignment: Alignment.centerRight,
            color: Colors.green,
            child: Icon(Icons.check),
          ),
          child: ListTile(title: Text('$item')),
        );
      },
    );
  }
//<code>
}
