import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class CupertinoSliderWidget extends BaseSampleStatefulWidget {
  static String name = 'CupertinoSlider';
  static String route = '/ui/CupertinoSlider';

  @override
  BaseSampleStatefulWidgetState createState() => _CupertinoSliderWidget();
}

class _CupertinoSliderWidget extends BaseSampleStatefulWidgetState<CupertinoSliderWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/cupertino_slider_widget.dart';
  }

  @override
  String getTitle() {
    return CupertinoSliderWidget.name;
  }

  //<code>
  double _progress = 50;

  @override
  Widget buildBody(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CupertinoSlider(
              value: _progress,
              min: 0.0,
              max: 100.0,
              onChanged: (value) {
                setState(() {
                  _progress = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),

            ///步进为50
            CupertinoSlider(
              value: _progress,
              min: 0.0,
              max: 100.0,
              divisions: 2,
              onChanged: (value) {
                setState(() {
                  _progress = value;
                });
              },
              thumbColor: Colors.pinkAccent,
            )
          ],
        ),
      ),
    );
  }
//<code>
}
