import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ScrollbarWidget extends BaseSampleStatelessWidget {

  static String name = 'Scrollbar';
  static String route = '/ui/Scrollbar';
  @override
  Widget buildBody(BuildContext context) {
    //<code>
    ///为listview 添加一个滑动到哪里的视觉提示
    return Scrollbar(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/scrollbar_widget.dart';
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
