import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class AnimatedContainerWidget extends BaseSampleStatefulWidget {
  static String name = 'AnimatedContainer';
  static String route = '/ui/AnimatedContainer';

  @override
  BaseSampleStatefulWidgetState createState() => _AnimatedContainerWidget();
}

class _AnimatedContainerWidget extends BaseSampleStatefulWidgetState<AnimatedContainerWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/animated_container_widget.dart';
  }

  @override
  String getTitle() {
    return AnimatedContainerWidget.name;
  }

  //<code>
  double _value = 200;
  bool _selected = false;
  Color _color = Colors.brown;

  @override
  Widget buildBody(BuildContext context) {
    ///UI布局
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ///点击后改变颜色和高度，还有边框的弧度，除了这些出行， AnimatedContainer其他的任何属性改变都会有动画效果
          GestureDetector(
            onTap: () {
              setState(() {
                _selected = !_selected;
              });
            },
            child: AnimatedContainer(
              height: _selected ? _value : 100,
              width: _selected ? _value : 100,
              decoration: BoxDecoration(
                color: _selected ? _color : Colors.blueGrey,
                borderRadius: _selected ? BorderRadius.circular(100) : BorderRadius.circular(0),
              ),
              duration: Duration(milliseconds: 200),
              child: Center(
                  child: Text(
                'Click me',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
              onEnd: (){print("动画结束");},
            ),
          ),
        ],
      ),
    );
  }
//<code>
}
