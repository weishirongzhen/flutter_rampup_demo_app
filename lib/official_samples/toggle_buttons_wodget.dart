import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class ToggleButtonsWidget extends BaseSampleStatefulWidget {
  static String name = 'ToggleButtons';
  static String route = '/ui/ToggleButtons';

  @override
  BaseSampleStatefulWidgetState createState() => _ToggleButtonsWidget();
}

class _ToggleButtonsWidget extends BaseSampleStatefulWidgetState<ToggleButtonsWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/toggle_buttons_wodget.dart';
  }

  @override
  String getTitle() {
    return ToggleButtonsWidget.name;
  }

  //<code>
  List<bool> isSelected = [true, false, false];

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        ToggleButtons(
          children: <Widget>[
            Icon(Icons.ac_unit),
            Icon(Icons.call),
            Icon(Icons.cake),
          ],
          onPressed: (int index) {
            setState(() {
              isSelected[index] = !isSelected[index];
            });
          },
          isSelected: isSelected,
        ),
      ],
    );
  }
//<code>
}
