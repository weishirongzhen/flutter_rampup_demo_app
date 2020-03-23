import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ShowAboutDialogWidget extends BaseSampleStatelessWidget {
  static String name = 'ShowAboutDialog';
  static String route = '/ui/ShowAboutDialog';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return RaisedButton(
      onPressed: () {
        showAboutDialog(
          context: context,
          applicationIcon: Image.asset(
            'assets/images/app_icon.webp',
            height: 100,
            width: 100,
          ),
          applicationName: 'Flutter Book',
          applicationVersion: '1.0.0',
          applicationLegalese: 'copyright blbalbalbla',
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.red,
            ),
            Text('自定义更多信息'),
          ],
        );
      },
      child: Text('Click me'),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/show_about_dialog_widget.dart';
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
