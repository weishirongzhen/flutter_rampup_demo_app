import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ClipRectWidget extends BaseSampleStatelessWidget {
  static String name = 'ClipRect';
  static String route = '/ui/ClipRect';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ///未裁切
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                widthFactor: 0.5,
                child: Image.asset(
                  'assets/images/butterfly.webp',
                  width: 200,
                  height: 200,
                ),
              ),
              Text("Hello Flutter"),
            ],
          ),

          ///裁切
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRect(
                ///将溢出部分剪裁
                child: Align(
                  alignment: Alignment.topLeft,
                  widthFactor: 0.5,
                  child: Image.asset(
                    'assets/images/butterfly.webp',
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
              Text("Hello Flutter"),
            ],
          ),
        ],
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/clip_rect_widget.dart';
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
