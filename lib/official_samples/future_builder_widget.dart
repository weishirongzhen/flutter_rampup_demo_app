import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class FutureBuilderWidget extends BaseSampleStatelessWidget {
  static String name = 'FutureBuilder';
  static String route = '/ui/FutureBuilder';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    //异步更新ui， future可以来源于任何异步数据， 比如网络请求
    return SingleChildScrollView(
      child: FutureBuilder<String>(
          future: null,
          builder: (context, snapshot) {
            return Container(
              child: Text(snapshot.hasData ? snapshot.data.toString() : '加载中...'),
            );
          }),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/future_builder_widget.dart';
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
