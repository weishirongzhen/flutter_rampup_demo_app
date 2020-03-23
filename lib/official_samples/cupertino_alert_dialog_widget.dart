import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class CupertinoAlertDialogWidget extends BaseSampleStatelessWidget {
  static String name = 'CupertinoAlertDialog';
  static String route = '/ui/CupertinoAlertDialog';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('Click me'),
          onPressed: () {
            showDialog<void>(
              context: context,
              barrierDismissible: false, // user must tap button!
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: Text('标题'),
                  content: Text('请选择' * 10),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      child: Text('取消'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    CupertinoDialogAction(
                      child: Text('确定'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
        )
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/cupertino_alert_dialog_widget.dart';
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
