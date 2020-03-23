import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class AnimatedPositionedWidget extends BaseSampleStatefulWidget {
  static String name = 'AnimatedPositioned';
  static String route = '/ui/AnimatedPositioned';

  @override
  BaseSampleStatefulWidgetState createState() => _AnimatedPositionedWidget();
}

class _AnimatedPositionedWidget extends BaseSampleStatefulWidgetState<AnimatedPositionedWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/animated_positioned_widget.dart';
  }

  @override
  String getTitle() {
    return AnimatedPositionedWidget.name;
  }

  //<code>
  bool _change = true;

  double _left = 0;
  double _top = 0;
  double _right = 100;
  double _bottom = 0;

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 200,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeOutQuad,
                left: _left,
                top: _top,
                right: _right,
                bottom: _bottom,
                child: Container(
                  color: Colors.brown,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: const Text('Click me!'),
          onPressed: () {
            setState(() {
              _left = _change ? 100 : 0;
              _top = _change ? 0 : 0;
              _right = _change ? 0 : 100;
              _bottom = _change ? 0 : 0;

              _change = !_change;
            });
          },
        ),
      ],
    );
  }
//<code>
}
