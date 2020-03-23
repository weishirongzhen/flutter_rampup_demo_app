import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ShowDialogWidget extends BaseSampleStatelessWidget {
  static String name = 'ShowDialog';
  static String route = '/ui/ShowDialog';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    //其实showDialog并不是个widget，而是个用来show出widget的方法
    return RaisedButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('一个普通对话框'),
                content: Text('一个普通对话框，内容'),
                actions: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            });
      },
      child: Text('Click me'),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/show_dialog_widget.dart';
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
