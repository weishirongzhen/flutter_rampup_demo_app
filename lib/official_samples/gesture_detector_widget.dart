import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class GestureDetectorWidget extends BaseSampleStatelessWidget {
  static String name = 'GestureDetector';
  static String route = '/ui/GestureDetector';

  @override
  Widget buildBody(BuildContext context) {
    //<code>

    return GestureDetector(
      ///一堆属性， 需要详情的请参考详细文档 ,其中 有些 Horizontal  和 Vertical 不能同时出现，  Pan  和 Scale的也不能同时出现，的否则会报异常
      onTapDown: (detail) {},
      onTapUp: (detail) {},
      onTap: () {},
      onTapCancel: () {},
      onSecondaryTapDown: (detail) {},
      onSecondaryTapUp: (detail) {},
      onSecondaryTapCancel: () {},
      onDoubleTap: () {},
      onLongPress: () {},
      onLongPressStart: (detail) {},
      onLongPressMoveUpdate: (detail) {},
      onLongPressUp: () {},
      onLongPressEnd: (detail) {},
      onVerticalDragDown: (detail) {},
      onVerticalDragStart: (detail) {},
      onVerticalDragUpdate: (detail) {},
      onVerticalDragEnd: (detail) {},
      onVerticalDragCancel: () {},
//      onHorizontalDragDown: (detail) {},
//      onHorizontalDragStart: (detail) {},
//      onHorizontalDragUpdate: (detail) {},
//      onHorizontalDragEnd: (detail) {},
//      onHorizontalDragCancel: () {},
      onForcePressStart: (detail) {},
      onForcePressPeak: (detail) {},
      onForcePressUpdate: (detail) {},
      onForcePressEnd: (detail) {},
//      onPanDown: (detail) {},
//      onPanStart: (detail) {},
//      onPanUpdate: (detail) {},
//      onPanEnd: (detail) {},
//      onPanCancel: () {},
      onScaleStart: (detail) {},
      onScaleUpdate: (detail) {},
      onScaleEnd: (detail) {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('GestureDetector 不是一个可视化的widget， 它是一个可以监听多种手势动作的Widget，具体支持的手势请看代码'),
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/gesture_detector_widget.dart';
  }

  @override
  String getTitle() {
    return name;
  }

  @override
  String getDemoUrl() {
    return '';
  }
}
