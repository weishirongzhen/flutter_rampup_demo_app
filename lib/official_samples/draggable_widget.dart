import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class DraggableWidget extends BaseSampleStatefulWidget {
  static String name = 'Draggable';
  static String route = '/ui/Draggable';

  @override
  BaseSampleStatefulWidgetState createState() => _DraggableWidget();
}

class _DraggableWidget extends BaseSampleStatefulWidgetState<DraggableWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/draggable_widget.dart';
  }

  @override
  String getTitle() {
    return DraggableWidget.name;
  }

  //<code>
  Offset _offset = Offset(0, 0);

  @override
  Widget buildBody(BuildContext context) {
    return Scaffold(
      body: Transform.translate(
        offset: _offset,
        child: Draggable<String>(
          ///需要传递的数据
          data: 'Flutter',

          ///可拖动的Widget
          child: Column(
            children: <Widget>[
              FlutterLogo(
                size: 100.0,
              ),
              Text('拖动我')
            ],
          ),

          ///跟随手指拖动的Widget
          feedback: FlutterLogo(
            size: 100.0,
          ),

          ///拖动时原位置的Widget
          childWhenDragging: Container(
            width: 0,
            height: 0,
          ),

          ///回调，当拖动开始时触发
          onDragStarted: () {},

          ///回调，携带两个参数，当拖动到DropTarget后，释放后触发, 减去 appbar 和 状态栏 高度，确保移动准确
          onDragEnd: (DraggableDetails dragDownDetails) {
            setState(() {
              _offset = Offset(dragDownDetails.offset.dx, dragDownDetails.offset.dy - AppBar().preferredSize.height - MediaQuery.of(context).padding.top);
            });
          },

          ///回调，当拖动到DropTarget和DropTarget接受这次拖动时触发
          onDragCompleted: () {},

          ///回调，当拖动到DropTarget但DropTarget不接受时触发
          onDraggableCanceled: (
            Velocity velocity,
            Offset offset,
          ) {},
        ),
      ),
    );
  }
//<code>
}
