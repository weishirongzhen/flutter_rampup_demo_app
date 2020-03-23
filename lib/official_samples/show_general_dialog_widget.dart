import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ShowGeneralDialogWidget extends BaseSampleStatelessWidget {
  static String name = 'ShowGeneralDialog';
  static String route = '/ui/ShowGeneralDialog';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return RaisedButton(
      onPressed: () {
        showGeneralDialog(
            context: context,
            barrierDismissible: true,
            barrierLabel: '',
            transitionDuration: Duration(milliseconds: 200),
            pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
              return ScaleTransition(
                scale: animation,
                child: Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.blueGrey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          width: 100,
                          height: 50,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('关闭'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            });
      },
      child: Text('Click me'),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/show_general_dialog_widget.dart';
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
