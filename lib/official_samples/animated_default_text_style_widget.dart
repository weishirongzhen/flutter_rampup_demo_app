import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';
import 'package:google_fonts/google_fonts.dart';

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
  TextStyle _style = GoogleFonts.sigmarOne(fontSize: 60, color: Colors.blue);

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ///改变字体 sized color weight
        Container(
          height: 120,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            style: TextStyle(
              fontSize: _fontSize,
              color: _color,
              fontWeight: FontWeight.bold,
            ),
            child: Text('Flutter'),
          ),
        ),

        ///改变字体 sized color font
        Container(
          height: 120,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            style: _style,
            child: Text('Flutter'),
          ),
        ),
        FlatButton(
          onPressed: () {
            setState(() {
              _fontSize = _change ? 90 : 60;
              _color = _change ? Colors.blue : Colors.red;
              _change = !_change;
              _style = _change ? GoogleFonts.sigmarOne(fontSize: 60, color: Colors.blue) : GoogleFonts.macondo(fontSize: 40, color: Colors.blue);
            });
          },
          child: Text(
            "CLICK ME!",
          ),
        )
      ],
    );
  }
//<code>
}
