import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class AnimatedDefaultTextStyleWidget extends BaseSampleStatefulWidget {
  static String name = 'AnimatedDefaultTextStyle';
  static String route = '/ui/AnimatedDefaultTextStyle';

  @override
  BaseSampleStatefulWidgetState createState() => _AnimatedDefaultTextStyleWidget();
}

class _AnimatedDefaultTextStyleWidget extends BaseSampleStatefulWidgetState<AnimatedDefaultTextStyleWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/animated_default_text_style_widget.dart';
  }

  @override
  String getTitle() {
    return AnimatedDefaultTextStyleWidget.name;
  }

  //<code>

  bool _change = true;

  double _fontSize = 60;
  Color _color = Colors.blue;
  FontWeight _fontWeight = FontWeight.bold;

  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ///改变字体 sized color weight
          AnimatedDefaultTextStyle(
            curve: Curves.bounceOut,
            duration: const Duration(milliseconds: 300),
            style: TextStyle(
              fontSize: _fontSize,
              color: _color,
              fontWeight: _fontWeight,
            ),
            child: Column(
              children: <Widget>[
                Text('Flutter'),
                Text('Flutter'),
              ],
            ),
            onEnd: () {
              print('动画结束回调');
            },
          ),

          RaisedButton(
            onPressed: () {
              setState(() {
                _fontSize = _change ? 90 : 60;
                _color = _change ? Colors.blue : Colors.red;
                _change = !_change;
                _fontWeight = _change ? FontWeight.bold : FontWeight.w100;
              });
            },
            child: Text(
              "Click me!",
            ),
          )
        ],
      ),
    );
  }
//<code>
}
