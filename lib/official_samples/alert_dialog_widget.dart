import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class AlertDialogWidget extends BaseSampleStatelessWidget {
  static String name = 'AlertDialog';
  static String route = '/ui/AlertDialogWidget';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          color: Colors.pinkAccent,
          child: Text('click me1'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: Colors.yellow,
                title: Text('这是一个对话框'),
                content: Text(
                  'Hello Flutter!\n点击对话框外部，使对话框消失',
                ),
                contentPadding: EdgeInsets.all(10),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  FlatButton(
                    child: Text('Ok'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            );
          },
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          color: Colors.red,
          child: Text('click me2'),
          onPressed: () {
            ///barrierDismissible = false 点击对话框外部，不会使对话框消失
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => AlertDialog(
                title: Text('这是一个对话框'),
                content: Text(
                  'Hello Flutter!\n点击对话框外部，对话框不会消失',
                ),
                contentPadding: EdgeInsets.all(10),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  FlatButton(
                    child: Text('Ok'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/alert_dialog_widget.dart';
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
