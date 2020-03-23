import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class CupertinoSwitchWidget extends BaseSampleStatefulWidget {
  static String name = 'CupertinoSwitch';
  static String route = '/ui/CupertinoSwitch';

  @override
  BaseSampleStatefulWidgetState createState() => _CupertinoSwitchWidget();
}

class _CupertinoSwitchWidget extends BaseSampleStatefulWidgetState<CupertinoSwitchWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/cupertino_switch_widget.dart';
  }

  @override
  String getTitle() {
    return CupertinoSwitchWidget.name;
  }

  //<code>
  bool _checked = false;

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('关闭提醒'),
          trailing: CupertinoSwitch(
            value: _checked,
            onChanged: (bool value) {
              setState(() {
                _checked = value;
              });
            },
          ),
          onTap: () {
            setState(() {
              _checked = !_checked;
            });
          },
        )
      ],
    );
  }
//<code>
}
