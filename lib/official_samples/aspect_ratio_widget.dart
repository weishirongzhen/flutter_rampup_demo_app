import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class AspectRatioWidget extends BaseSampleStatelessWidget {
  static String name = 'AspectRatioWidget';
  static String route = '/ui/AspectRatioWidget';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ///长宽比 4:3
        Container(
          height: 100,
          child: AspectRatio(
            aspectRatio: 4 / 3,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ),

        ///长宽比 4:2
        Container(
          height: 100,
          child: AspectRatio(
            aspectRatio: 4 / 2,
            child: Container(
              color: Colors.red,
            ),
          ),
        ),

        ///长宽比 8:1
        Container(
          width: 220,
          child: AspectRatio(
            aspectRatio: 8 / 1,
            child: Container(
              color: Colors.blueGrey,
            ),
          ),
        )
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/aspect_ratio_widget.dart';
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
