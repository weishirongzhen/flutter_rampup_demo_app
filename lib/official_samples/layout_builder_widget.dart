import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class LayoutBuilderWidget extends BaseSampleStatelessWidget {
  static String name = 'LayoutBuilder';
  static String route = '/ui/LayoutBuilder';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    //在手机上不太好表现， 意思是 如果剩余最大宽度还大于给定值600， 则用row 布局， 否则使用 column布局。
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return Row(
            children: <Widget>[Text('one'), Text('two')],
          );
        } else {
          return Column(
            children: <Widget>[Text('one'), Text('two')],
          );
        }
      },
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/layout_builder_widget.dart';
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
