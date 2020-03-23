import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class IconWidget extends BaseSampleStatelessWidget {

  static String name = 'Icon';
  static String route = '/ui/Icon';
  @override
  Widget buildBody(BuildContext context) {
    //<code>
    ///flutter 自带了不错的Icons 集合
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: <Widget>[
        Icon(Icons.info),
        Icon(Icons.email, size: 100,),
        Icon(Icons.enhanced_encryption, color: Colors.blue,),
      ],),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/icon_widget.dart';
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
