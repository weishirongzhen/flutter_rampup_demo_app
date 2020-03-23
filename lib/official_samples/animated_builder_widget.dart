import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class AnimatedBuilderWidget extends BaseSampleStatefulWidget {
  static String name = 'AnimatedBuilder';
  static String route = '/ui/AnimatedBuilder';

  @override
  BaseSampleStatefulWidgetState createState() => _AnimatedBuilderWidget();
}

class _AnimatedBuilderWidget extends BaseSampleStatefulWidgetState<AnimatedBuilderWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/animated_builder_widget.dart';
  }

  @override
  String getTitle() {
    return AnimatedBuilderWidget.name;
  }

  //<code>

  AnimationController animationControllerNotReverse;

  AnimationController animationControllerReverse;

  AnimationController animationControllerReverseFast;

  Animation tween;
  Animation tween1;

  Animation colorTween;

  Animation sizedTween;

  @override
  void initState() {
    ///动画控制器， 结束播放后，从头开始循环。周期1秒
    animationControllerNotReverse = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: false);

    ///动画控制器， 结束播放后，反向循环，从头播到尾，再从尾播到头。周期1秒
    animationControllerReverse = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..repeat(reverse: true);

    ///动画控制器， 结束播放后，反向循环，从头播到尾，再从尾播到头。周期80毫秒
    animationControllerReverseFast = AnimationController(
      duration: const Duration(milliseconds: 80),
      vsync: this,
    )..repeat(reverse: true);

    ///double数值变化的补间动画
    tween = Tween(begin: 0.0, end: pi * 2).animate(animationControllerNotReverse);
    tween1 = Tween(begin: -0.06, end: 0.06).animate(animationControllerReverseFast);

    ///颜色值变化的补间动画
    colorTween = ColorTween(begin: Colors.red, end: Colors.blue).chain(CurveTween(curve: Curves.linear)).animate(animationControllerReverse);

    ///widget height值变化的补间动画
    sizedTween = SizeTween(begin: Size(50.0, 50.0), end: Size(150.0, 150.0)).chain(CurveTween(curve: Curves.linear)).animate(animationControllerReverse);

    super.initState();
  }


  @override
  void dispose() {
    animationControllerNotReverse.dispose();
    animationControllerReverse.dispose();
    animationControllerReverseFast.dispose();
    super.dispose();
  }

  @override
  Widget buildBody(BuildContext context) {
    ///UI布局
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ///旋转动画
          AnimatedBuilder(
            animation: tween,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Text('tween'),
            ),
            builder: (context, child) {
              return Transform.rotate(
                angle: tween.value,
                child: child,
              );
            },
          ),
          SizedBox(
            height: 20,
          ),

          ///颜色过渡动画
          AnimatedBuilder(
            animation: colorTween,
            child: Container(
              width: 100,
              height: 100,
              child: Text('color tween'),
            ),
            builder: (context, child) {
              return Container(
                color: colorTween.value,
                child: child,
              );
            },
          ),
          SizedBox(
            height: 20,
          ),

          ///抖动动画
          AnimatedBuilder(
            animation: tween1,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blueGrey,
              child: Text('tween1'),
            ),
            builder: (context, child) {
              return Transform.rotate(
                angle: tween1.value,
                child: child,
              );
            },
          ),
          SizedBox(
            height: 20,
          ),

          ///大小过渡动画
          AnimatedBuilder(
            animation: sizedTween,
            child: Container(
              width: 100,
              height: 100,
              child: Text('sized tween'),
            ),
            builder: (context, child) {
              return Container(
                color: Colors.blue,
                height: sizedTween.value.height,
                width: sizedTween.value.width,
                child: child,
              );
            },
          ),
        ],
      ),
    );
  }
//<code>
}
