import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class PositionedTransitionWidget extends BaseSampleStatefulWidget {
  static String name = 'PositionedTransition';
  static String route = '/ui/PositionedTransition';

  @override
  BaseSampleStatefulWidgetState createState() => _PositionedTransitionWidget();
}

class _PositionedTransitionWidget extends BaseSampleStatefulWidgetState<PositionedTransitionWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/positioned_transition_widget.dart';
  }

  @override
  String getTitle() {
    return PositionedTransitionWidget.name;
  }

  //<code>

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    super.initState();
  }

  final relativeRectTween = RelativeRectTween(
    begin: RelativeRect.fromLTRB(40, 40, 0, 0),
    end: RelativeRect.fromLTRB(0, 0, 40, 40),
  );

  AnimationController _controller;

  bool _first = true;

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          color: Colors.blue[50],
          height: 300,
          child: Stack(
            children: <Widget>[
              PositionedTransition(
                rect: relativeRectTween.animate(_controller),
                child: Container(
                  width: 200,
                  height: 200,
                  padding: EdgeInsets.all(10),
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        FlatButton(
          onPressed: () {
            if (_first) {
              _controller.forward();
            } else {
              _controller.reverse();
            }
            _first = !_first;
          },
          child: Text(
            "Click me",
          ),
        )
      ],
    );
  }
//<code>
}
