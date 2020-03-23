import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class SnackBarWidget extends BaseSampleStatelessWidget {
  static String name = 'SnackBar';
  static String route = '/ui/SnackBar';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    ///showSnackBar   必须使用Scaffold的 context 不然会报错， 这里使用Builder来重新获取context
    return Center(
      child: Builder(builder: (builderContext) {
        return RaisedButton(
          onPressed: () {
            Scaffold.of(builderContext).showSnackBar(
              SnackBar(
                content: Text('这是一个snackbar'),
              ),
            );
          },
          child: Text('Click me'),
        );
      }),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/snack_bar_widget.dart';
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
