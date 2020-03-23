import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class DecoratedBoxWidget extends BaseSampleStatelessWidget {
  static String name = 'DecoratedBox';
  static String route = '/ui/DecoratedBox';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),

        ///被景
        DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            border: Border.all(
              color: const Color(0xFF000000),
              style: BorderStyle.solid,
              width: 4.0,
            ),
            shape: BoxShape.circle,
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Color(0x66000000),
                blurRadius: 10.0,
                spreadRadius: 4.0,
              )
            ],
          ),
          child: Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(20),
            child: FlutterLogo(),
          ),
        ),

        SizedBox(
          height: 20,
        ),

        ///前景
        DecoratedBox(
          position: DecorationPosition.foreground,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: const Color(0xFF000000),
              style: BorderStyle.solid,
              width: 4.0,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Color(0x66000000),
                blurRadius: 10.0,
                spreadRadius: 4.0,
              )
            ],
          ),
          child: Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(20),
            child: FlutterLogo(),
          ),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/decorated_box_widget.dart';
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
