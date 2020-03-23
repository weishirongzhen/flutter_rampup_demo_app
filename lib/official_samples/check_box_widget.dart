import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class CheckBoxWidget extends BaseSampleStatefulWidget {
  static String name = 'CheckBox';
  static String route = '/ui/CheckBox';

  @override
  BaseSampleStatefulWidgetState createState() => _CheckBoxWidget();
}

class _CheckBoxWidget extends BaseSampleStatefulWidgetState<CheckBoxWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/check_box_widget.dart';
  }

  @override
  String getTitle() {
    return CheckBoxWidget.name;
  }

  //<code>
  bool _value = true;

  @override
  Widget buildBody(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Checkbox(
          value: _value,
          onChanged: (bool newValue) {
            setState(() {
              _value = newValue;
            });
          },
        ),
        Text('记住密码？'),
      ],
    );
  }
//<code>
}
