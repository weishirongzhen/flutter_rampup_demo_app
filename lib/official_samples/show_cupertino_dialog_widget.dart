import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ShowCupertinoDialogWidget extends BaseSampleStatelessWidget {
  static String name = 'ShowCupertinoDialog';
  static String route = '/ui/ShowCupertinoDialog';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return RaisedButton(
      onPressed: () {
        showCupertinoDialog(
            context: context,
            builder: (context) {
              return CupertinoAlertDialog(
                title: Text("iOS风格对话框"),
                content: Text("iOS风格对话框"),
                actions: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('cancel'),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('ok'),
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
    return 'lib/official_samples/show_cupertino_dialog_widget.dart';
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
