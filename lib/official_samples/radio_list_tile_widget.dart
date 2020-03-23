import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class RadioListTileWidget extends BaseSampleStatefulWidget {
  static String name = 'RadioListTile';
  static String route = '/ui/RadioListTile';

  @override
  BaseSampleStatefulWidgetState createState() => _RadioListTileWidget();
}
//<code>

enum MyValue { one, two }

class _RadioListTileWidget extends BaseSampleStatefulWidgetState<RadioListTileWidget> {
  MyValue _value = MyValue.one;

  @override
  String getFilePath() {
    return 'lib/official_samples/radio_list_tile_widget.dart';
  }

  @override
  String getTitle() {
    return RadioListTileWidget.name;
  }

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<MyValue>(
          title: const Text('one'),
          value: MyValue.one,
          groupValue: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
        ),
        RadioListTile<MyValue>(
          title: const Text('two'),
          value: MyValue.two,
          groupValue: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ],
    );
  }
//<code>
}
