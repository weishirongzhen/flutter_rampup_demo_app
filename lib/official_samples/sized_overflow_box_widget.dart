import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class SizedOverflowBoxWidget extends BaseSampleStatelessWidget {
  static String name = 'SizedOverflowBox';
  static String route = '/ui/SizedOverflowBox';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            color: Colors.blue,
            child: SizedOverflowBox(
              size: const Size(100.0, 100.0),
              alignment: AlignmentDirectional.bottomStart,
              child: Container(
                height: 50.0,
                width: 150.0,
                color: Colors.red.withOpacity(0.5),
              ),
            ),
          ),
          Text('SizedOverflowBox的大小是100*100， child的大小是 50 * 150')
        ],
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/sized_overflow_box_widget.dart';
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
