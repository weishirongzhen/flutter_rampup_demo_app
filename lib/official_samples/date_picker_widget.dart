import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class DatePickerWidget extends BaseSampleStatelessWidget {
  static String name = 'DatePicker';
  static String route = '/ui/DatePicker';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2020),
              lastDate: DateTime(2030),
              builder: (BuildContext context, Widget child) {
                return child;
              },
            );
          },
          child: Text('Click me'),
        ),
        SizedBox(
          height: 22,
        ),

        ///暗色主题
        RaisedButton(
          onPressed: () {
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2020),
              lastDate: DateTime(2030),
              builder: (BuildContext context, Widget child) {
                return Theme(
                  data: ThemeData.dark(),
                  child: child,
                );
              },
            );
          },
          child: Text('Click me'),
        )
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/date_picker_widget.dart';
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
