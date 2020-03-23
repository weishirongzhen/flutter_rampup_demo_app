import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class TransformWidget extends BaseSampleStatelessWidget {

  static String name = 'Transform';
  static String route = '/ui/Transform';
  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Container(
      color: Colors.blue,
      child: Transform(
        alignment: Alignment.topRight,
        transform: Matrix4.skewY(0.3)..rotateZ(-pi / 12.0),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: const Color(0xFFE8581C),
          child: const Text('hello flutter'),
        ),
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/transform_widget.dart';
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
