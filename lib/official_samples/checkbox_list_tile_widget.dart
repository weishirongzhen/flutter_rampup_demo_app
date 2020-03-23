import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class CheckboxListTileWidget extends BaseSampleStatefulWidget {
  static String name = 'CheckboxListTile';
  static String route = '/ui/CheckboxListTile';

  @override
  BaseSampleStatefulWidgetState createState() => _CheckboxListTileWidget();
}

class _CheckboxListTileWidget extends BaseSampleStatefulWidgetState<CheckboxListTileWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/checkbox_list_tile_widget.dart';
  }

  @override
  String getTitle() {
    return CheckboxListTileWidget.name;
  }

  //<code>

  @override
  Widget buildBody(BuildContext context) {
    ///这里介绍一个新属性 timeDilation，这个可以控制全局动画的速度
    return Center(
      child: CheckboxListTile(
        title: const Text('慢速选中动画'),
        value: timeDilation != 1.0,
        onChanged: (bool value) {
          setState(() {
            timeDilation = value ? 5.0 : 1.0;
          });
        },
        secondary: const Icon(Icons.hourglass_empty),
      ),
    );
  }
//<code>
}
