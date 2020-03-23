import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class DecoratedBoxTransitionWidget extends BaseSampleStatefulWidget {
  static String name = 'DecoratedBoxTransition';
  static String route = '/ui/DecoratedBoxTransition';

  @override
  BaseSampleStatefulWidgetState createState() => _DecoratedBoxTransitionWidget();
}

class _DecoratedBoxTransitionWidget extends BaseSampleStatefulWidgetState<DecoratedBoxTransitionWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/decorated_box_transition_widget.dart';
  }

  @override
  String getTitle() {
    return DecoratedBoxTransitionWidget.name;
  }

  //<code>

  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(
        color: const Color(0xFF000000),
        style: BorderStyle.solid,
        width: 4.0,
      ),
      borderRadius: BorderRadius.zero,
      shape: BoxShape.rectangle,
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Color(0x66000000),
          blurRadius: 10.0,
          spreadRadius: 4.0,
        )
      ],
    ),
    end: BoxDecoration(
      color: const Color(0xFF000000),
      border: Border.all(
        color: const Color(0xFF202020),
        style: BorderStyle.solid,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(10.0),
      // No shadow.
    ),
  );

  AnimationController _controller;

  bool _change = true;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        DecoratedBoxTransition(
          position: DecorationPosition.background,
          decoration: decorationTween.animate(_controller),
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
        RaisedButton(
          onPressed: () {
            if (_change) {
              _controller.forward();
            } else {
              _controller.reverse();
            }
            _change = !_change;
          },
          child: Text(
            "Click Me!",
          ),
        )
      ],
    );
  }
//<code>
}
