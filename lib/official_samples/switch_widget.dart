import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class SwitchWidget extends BaseSampleStatefulWidget {
  static String name = 'Switch';
  static String route = '/ui/Switch';

  @override
  BaseSampleStatefulWidgetState createState() => _SwitchWidget();
}

class _SwitchWidget extends BaseSampleStatefulWidgetState<SwitchWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/switch_widget.dart';
  }

  @override
  String getTitle() {
    return SwitchWidget.name;
  }

  //<code>
  bool _value = true;

  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Switch(
        value: _value,
        onChanged: (bool newValue) {
          setState(() {
            _value = newValue;
          });
        },
      ),
    );
  }
//<code>
}
