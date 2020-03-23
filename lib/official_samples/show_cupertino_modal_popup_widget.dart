import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ShowCupertinoModalPopupWidget extends BaseSampleStatelessWidget {
  static String name = 'ShowCupertinoModalPopup';
  static String route = '/ui/ShowCupertinoModalPopup';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return RaisedButton(
      onPressed: () {
        showCupertinoModalPopup(
            context: context,
            builder: (BuildContext context) {
              return CupertinoActionSheet(
                title: Text('标题'),
                message: Text('这是ios风格的底部弹出框'),
                actions: <Widget>[
                  CupertinoActionSheetAction(
                    child: Text('取消'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    isDefaultAction: true,
                  ),
                  CupertinoActionSheetAction(
                    child: Text('确认'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    isDestructiveAction: true,
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
    return 'lib/official_samples/show_cupertino_modal_popup_widget.dart';
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
