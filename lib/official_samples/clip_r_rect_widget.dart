import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ClipRRectWidget extends BaseSampleStatelessWidget {
  static String name = 'ClipRRect';
  static String route = '/ui/ClipRRect';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ///裁切四周圆角
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset(
                'assets/images/butterfly.webp',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          ///只裁切左上圆角
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
            ),
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset(
                'assets/images/butterfly.webp',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/clip_r_rect_widget.dart';
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
