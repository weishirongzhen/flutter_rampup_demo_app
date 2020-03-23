import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class CupertinoTimerPickerWidget extends BaseSampleStatelessWidget {
  static String name = 'CupertinoTimerPicker';
  static String route = '/ui/CupertinoTimerPicker';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        Container(
          height: 180,
          child: CupertinoTimerPicker(
            mode: CupertinoTimerPickerMode.hms,
            onTimerDurationChanged: (value) {},
          ),
        ),
        Container(
          height: 200,
          child: CupertinoTimerPicker(
            mode: CupertinoTimerPickerMode.hm,
            onTimerDurationChanged: (value) {},
          ),
        ),
        Container(
          height: 200,
          child: CupertinoTimerPicker(
            mode: CupertinoTimerPickerMode.ms,
            onTimerDurationChanged: (value) {},
          ),
        )
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/cupertino_timer_picker_widget.dart';
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
