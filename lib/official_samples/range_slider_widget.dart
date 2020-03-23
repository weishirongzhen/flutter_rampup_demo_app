import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class RangeSliderWidget extends BaseSampleStatefulWidget {
  static String name = 'RangeSlider';
  static String route = '/ui/RangeSlider';

  @override
  BaseSampleStatefulWidgetState createState() => _RangeSliderWidget();
}

class _RangeSliderWidget extends BaseSampleStatefulWidgetState<RangeSliderWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/range_slider_widget.dart';
  }

  @override
  String getTitle() {
    return RangeSliderWidget.name;
  }

  //<code>
  double _starValue = 10;
  double _endValue = 80;

  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RangeSlider(
            values: RangeValues(_starValue, _endValue),
            min: 0.0,
            max: 100.0,
            onChanged: (values) {
              setState(() {
                _starValue = values.start.roundToDouble();
                _endValue = values.end.roundToDouble();
              });
            },
          ),
          SizedBox(
            height: 30,
          ),

          //步进为2
          RangeSlider(
            values: RangeValues(_starValue, _endValue),
            min: 0.0,
            max: 100.0,
            divisions: 50,
            labels: RangeLabels(_starValue.toString(), _endValue.toString()),
            onChanged: (values) {
              setState(() {
                _starValue = values.start.roundToDouble();
                _endValue = values.end.roundToDouble();
              });
            },
          ),
        ],
      ),
    );
  }
//<code>
}
