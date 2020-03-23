import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class AnimatedIconWidget extends BaseSampleStatefulWidget {
  static String name = 'AnimatedIcon';
  static String route = '/ui/AnimatedIcon';

  @override
  BaseSampleStatefulWidgetState createState() => _AnimatedIconWidget();
}

class _AnimatedIconWidget extends BaseSampleStatefulWidgetState<AnimatedIconWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/animated_icon_widget.dart';
  }

  @override
  String getTitle() {
    return AnimatedIconWidget.name;
  }

  //<code>

  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: AnimatedIcon(
        icon: AnimatedIcons.arrow_menu,
        progress: AnimationController(vsync: this)
          ..drive(Tween(begin: 0, end: 1))
          ..duration = Duration(milliseconds: 1000)
          ..repeat(),
      ),
    );
  }
//<code>
}
