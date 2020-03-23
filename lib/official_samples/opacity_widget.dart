import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class OpacityWidget extends BaseSampleStatelessWidget {


  static String name = 'Opacity';
  static String route = '/ui/Opacity';
  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(children: <Widget>[

      Opacity(child: Text('Hello flutter'),opacity: 0.1,),
      Opacity(child: Text('Hello flutter'),opacity: 0.2,),
      Opacity(child: Text('Hello flutter'),opacity: 0.3,),
      Opacity(child: Text('Hello flutter'),opacity: 0.4,),
      Opacity(child: Text('Hello flutter'),opacity: 0.5,),
      Opacity(child: Text('Hello flutter'),opacity: 0.6,),
      Opacity(child: Text('Hello flutter'),opacity: 0.7,),
      Opacity(child: Text('Hello flutter'),opacity: 0.8,),
      Opacity(child: Text('Hello flutter'),opacity: 0.9,),
      Opacity(child: Text('Hello flutter'),opacity: 1.0,),
    ],);
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/opacity_widget.dart';
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
