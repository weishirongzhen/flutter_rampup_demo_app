import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class CupertinoDatePickerWidget extends BaseSampleStatelessWidget {
  static String name = 'CupertinoDatePicker';
  static String route = '/ui/CupertinoDatePicker';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        SizedBox(
          height: 100,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.dateAndTime,
            onDateTimeChanged: (dateTime) {},
          ),
        ),
        SizedBox(
          height: 100,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.dateAndTime,
            use24hFormat: true,
            onDateTimeChanged: (dateTime) {},
          ),
        ),
        SizedBox(
          height: 200,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            onDateTimeChanged: (dateTime) {},
          ),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/cupertino_date_picker_widget.dart';
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
