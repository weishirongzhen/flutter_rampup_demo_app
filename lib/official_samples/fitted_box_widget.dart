import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class FittedBoxWidget extends BaseSampleStatelessWidget {
  static String name = 'FittedBox';
  static String route = '/ui/FittedBox';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Center(

      //一下 所有的父布局都是宽200高100， child 宽150高200， 看看FittedBox 中 不同fit 属性的效果
      child: Column(
        children: <Widget>[
          Container(
            width: 200,
            height: 100,
            color: Colors.blue.withOpacity(0.5),
            child: FittedBox(
              child: FlutterLogo(
                size: 200,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: 200,
            height: 100,
            color: Colors.blue.withOpacity(0.5),
            child: FittedBox(
              fit: BoxFit.fill,
              child: FlutterLogo(
               size: 200,
              ),
            ),
          ),

          SizedBox(height: 10,),
          Container(
            width: 200,
            height: 100,
            color: Colors.blue.withOpacity(0.5),
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: FlutterLogo(
                size: 200,
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
    return 'lib/official_samples/fitted_box_widget.dart';
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
