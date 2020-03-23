import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class CupertinoActionSheetWidget extends BaseSampleStatelessWidget {
  static String name = 'CupertinoActionSheet';
  static String route = '/ui/CupertinoActionSheet';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            showCupertinoModalPopup<void>(
              context: context,
              builder: (BuildContext context) {
                return CupertinoActionSheet(
                  title: Text('这是标题'),
                  message: Text('这是内容详情'),
                  actions: <Widget>[
                    CupertinoActionSheetAction(
                      child: Text('OK'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoActionSheetAction(
                      child: Text('Cancel'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoActionSheetAction(
                      child: Text('Help'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    isDefaultAction: true,
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                );
              },
            );
          },
          child: Text('Click me'),
        )
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/cupertino_action_sheet_widget.dart';
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
