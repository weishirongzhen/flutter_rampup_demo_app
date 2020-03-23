import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class BackdropFilterWidget extends BaseSampleStatelessWidget {
  static String name = 'BackdropFilter';
  static String route = '/ui/BackdropFilter';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          Image.asset(
            'assets/images/butterfly.webp',
          ),

          ///毛玻璃效果，左上角设置圆角
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10.0,
                sigmaY: 10.0,
              ),
              child: Container(
                alignment: Alignment.center,
                width: 200.0,
                height: 100.0,
                child: Text('Hello Flutter'),
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
    return 'lib/official_samples/backdrop_filter_widget.dart';
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
