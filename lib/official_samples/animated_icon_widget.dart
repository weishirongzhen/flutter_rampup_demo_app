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
  AnimationController _animation;
  bool _change = true;

  @override
  void initState() {
    _animation = AnimationController(vsync: this)..duration = Duration(milliseconds: 500);
    super.initState();
  }

  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          _change = !_change;
          _change ? _animation.forward() : _animation.reverse();
        },
        child: AnimatedIcon(
          size: 100,
          color: Colors.lightBlue,
          icon: AnimatedIcons.arrow_menu,
          progress: _animation,
        ),
      ),
    );
  }
//<code>
}
