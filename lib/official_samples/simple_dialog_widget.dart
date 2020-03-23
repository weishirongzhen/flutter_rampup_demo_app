import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class SimpleDialogWidget extends BaseSampleStatelessWidget {
  static String name = 'SimpleDialog';
  static String route = '/ui/SimpleDialog';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Center(
      child: RaisedButton(
        onPressed: () async {
          final result = await showDialog<String>(
              context: context,
              builder: (context) {
                return SimpleDialog(
                  title: const Text('请选择'),
                  children: <Widget>[
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, "one");
                      },
                      child: const Text('one'),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, "two");
                      },
                      child: const Text('two'),
                    ),
                  ],
                );
              });
        },
        child: Text('Click me'),
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/simple_dialog_widget.dart';
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
