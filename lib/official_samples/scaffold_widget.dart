import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ScaffoldWidget extends BaseSampleStatelessWidget {
  static String name = 'Scaffold';
  static String route = '/ui/Scaffold';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    //脚手架， 提供一个material主题的视觉框架
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.deepPurple,
      ),
//      drawer: ,
//    bottomNavigationBar: ,
//    floatingActionButton: ,
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/scaffold_widget.dart';
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
