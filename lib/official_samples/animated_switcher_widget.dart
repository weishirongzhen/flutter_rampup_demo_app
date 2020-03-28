import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class AnimatedSwitcherWidget extends BaseSampleStatefulWidget {
  static String name = 'AnimatedSwitcher';
  static String route = '/ui/AnimatedSwitcher';

  @override
  BaseSampleStatefulWidgetState createState() => _AnimatedSwitcherWidget();
}

class _AnimatedSwitcherWidget extends BaseSampleStatefulWidgetState<AnimatedSwitcherWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/animated_switcher_widget.dart';
  }

  @override
  String getTitle() {
    return AnimatedSwitcherWidget.name;
  }

  //<code>
  int _count = 0;

  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            switchInCurve: Curves.easeIn,
            switchOutCurve: Curves.easeInOut,
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(child: child, scale: animation);
            },
            child: Text(
              '$_count',
              key: ValueKey<int>(_count),
              style: TextStyle(fontSize: 100),
            ),
          ),
          RaisedButton(
            child: const Text('Click me'),
            onPressed: () {
              setState(() {
                _count += 1;
              });
            },
          ),
        ],
      ),
    );
  }
//<code>
}
