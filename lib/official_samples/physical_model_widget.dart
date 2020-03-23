import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class PhysicalModelWidget extends BaseSampleStatelessWidget {
  static String name = 'PhysicalModel';
  static String route = '/ui/PhysicalModel';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),

        //底部阴影为 矩形
        PhysicalModel(
          elevation: 6.0,
          shape: BoxShape.rectangle,
          shadowColor: Colors.black,
          color: Colors.white,
          child: Container(
            height: 120.0,
            width: 120.0,
            color: Colors.blue[50],
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        //底部阴影为 圆形
        PhysicalModel(
          elevation: 6.0,
          shape: BoxShape.circle,
          shadowColor: Colors.black,
          color: Colors.white,
          child: Container(
            height: 120.0,
            width: 120.0,
            color: Colors.blue[50],
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/physical_model_widget.dart';
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
