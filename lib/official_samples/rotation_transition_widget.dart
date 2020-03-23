import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class RotationTransitionWidget extends BaseSampleStatefulWidget {
  static String name = 'RotationTransition';
  static String route = '/ui/RotationTransition';

  @override
  BaseSampleStatefulWidgetState createState() => _RotationTransitionWidget();
}

class _RotationTransitionWidget extends BaseSampleStatefulWidgetState<RotationTransitionWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/rotation_transition_widget.dart';
  }

  @override
  String getTitle() {
    return RotationTransitionWidget.name;
  }

  //<code>

  final Tween<double> turnsTween = Tween<double>(
    begin: 1,
    end: 10,
  );

  AnimationController _controller;

  bool _first = true;

  initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 400),
    );
    super.initState();
  }

  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RotationTransition(
            turns: turnsTween.animate(_controller),
            child: Container(
              child: Container(
                width: 200,
                height: 200,
                padding: EdgeInsets.all(20),
                child: FlutterLogo(),
              ),
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
      ),
    );
  }
//<code>
}
