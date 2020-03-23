import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class DropdownButtonWidget extends BaseSampleStatefulWidget {
  static String name = 'DropdownButton';
  static String route = '/ui/DropdownButton';

  @override
  BaseSampleStatefulWidgetState createState() => _DropdownWidget();
}

class _DropdownWidget extends BaseSampleStatefulWidgetState<DropdownButtonWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/dropdown_button_widget.dart';
  }

  @override
  String getTitle() {
    return DropdownButtonWidget.name;
  }

  //<code>
  String dropdownValue  = "One";
  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        value: dropdownValue,
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['One', 'Two', 'Three', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        })
          .toList(),
      ),
    );
  }
//<code>
}
