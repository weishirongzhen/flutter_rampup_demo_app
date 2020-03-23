import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ShowModalBottomSheetWidget extends BaseSampleStatelessWidget {
  static String name = 'ShowModalBottomSheet';
  static String route = '/ui/ShowModalBottomSheet';

  @override
  Widget buildBody(BuildContext context) {
    //<code>

    //与showBottomSheet不同的是， 直接从最低不弹出， 切不需要 Scaffold的 context
    return RaisedButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 400,
                color: Colors.deepPurple,
              );
            });
      },
      child: Text('Click me'),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/show_modal_bottom_sheet_widget.dart';
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
