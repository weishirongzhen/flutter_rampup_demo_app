import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class AnimatedSizeWidget extends BaseSampleStatefulWidget {
  static String name = 'AnimatedSize';
  static String route = '/ui/AnimatedSize';

  @override
  BaseSampleStatefulWidgetState createState() => _AnimatedSizeWidget();
}

class _AnimatedSizeWidget extends BaseSampleStatefulWidgetState<AnimatedSizeWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/animated_size_widget.dart';
  }

  @override
  String getTitle() {
    return AnimatedSizeWidget.name;
  }

  //<code>
  bool _change = true;

  double _width = 200;
  double _height = 200;

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 300,
          child: Center(
            child: AnimatedSize(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              child: Container(
                width: _width,
                height: _height,
                color: Colors.blue,
              ),
              vsync: this,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: const Text('Click me!'),
          onPressed: () {
            setState(() {
              _width = _change ? 270 : 200;
              _height = _change ? 100 : 200;
              _change = !_change;
            });
          },
        ),
      ],
    );
  }
//<code>
}
