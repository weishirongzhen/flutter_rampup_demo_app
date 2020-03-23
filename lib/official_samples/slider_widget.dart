import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class SliderWidget extends BaseSampleStatefulWidget {
  static String name = 'Slider';
  static String route = '/ui/Slider';

  @override
  BaseSampleStatefulWidgetState createState() => _SliderWidget();
}

class _SliderWidget extends BaseSampleStatefulWidgetState<SliderWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/slider_widget.dart';
  }

  @override
  String getTitle() {
    return SliderWidget.name;
  }

  //<code>
  double _progress = 0;

  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Slider(
            value: _progress,
            min: 0.0,
            max: 100.0,
            onChanged: (value) {
              setState(() {
                _progress = value.roundToDouble();
              });
            },
          ),
          Slider(
            value: _progress,
            label: '$_progress',
            divisions: 20,
            min: 0.0,
            max: 100.0,
            onChanged: (value) {
              setState(() {
                _progress = value.roundToDouble();
              });
            },
          ),
        ],
      ),
    );
  }
//<code>
}
