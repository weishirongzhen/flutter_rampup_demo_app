import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ShowLicensePageWidget extends BaseSampleStatelessWidget {

  static String name = 'ShowLicensePage';
  static String route = '/ui/ShowLicensePage';
  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return RaisedButton(onPressed: (){
      showLicensePage(
        context: context,
        applicationIcon: Image.asset(
          'assets/images/app_icon.webp',
          height: 100,
          width: 100,
        ),
        applicationName: 'Flutter Book',
        applicationVersion: '1.0.0',
        applicationLegalese: 'copyright blabalbalbal',
      );
    },child: Text('Click me'),);
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/show_license_page_widget.dart';
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
