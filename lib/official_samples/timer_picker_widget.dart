import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class TimePickerWidget extends BaseSampleStatelessWidget {

  static String name = 'TimePicker';
  static String route = '/ui/TimePicker';
  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Center(child: RaisedButton(onPressed: (){
      Future<TimeOfDay> selectedTime = showTimePicker(
        initialTime: TimeOfDay.now(),
        context: context,
      );
    },child: Text('Click me'),),);
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/timer_picker_widget.dart';
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
