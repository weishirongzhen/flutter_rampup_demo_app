import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class ExpansionPanelListWidget extends BaseSampleStatefulWidget {
  static String name = 'ExpansionPanelList';
  static String route = '/ui/ExpansionPanelList';

  @override
  BaseSampleStatefulWidgetState createState() => _ExpansionPanelListWidget();
}

//<code>
class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class _ExpansionPanelListWidget extends BaseSampleStatefulWidgetState<ExpansionPanelListWidget> {
  List<Item> _data = generateItems(8);

  @override
  String getFilePath() {
    return 'lib/official_samples/expansion_panel_list_widget.dart';
  }

  @override
  String getTitle() {
    return ExpansionPanelListWidget.name;
  }

  @override
  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue),
              subtitle: Text('点击垃圾桶删除本条'),
              trailing: Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _data.removeWhere((currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
//<code>
}
