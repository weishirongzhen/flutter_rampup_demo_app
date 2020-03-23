import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class BottomSheetWidget extends BaseSampleStatelessWidget {
  static String name = 'BottomSheet';
  static String route = '/ui/BottomSheet';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return RaisedButton(
      child: Text('Click me'),
      onPressed: () {
        showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return SafeArea(
                child: Text(
                  'Hello flutter',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
              );
            });
      },
    );
  }

  //<code>

  @override
  String getFilePath() {
    return 'lib/official_samples/bottom_sheet_widget.dart';
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
