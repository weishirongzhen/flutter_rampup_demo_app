import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class PositionedWidget extends BaseSampleStatelessWidget {

  static String name = 'Positioned';
  static String route = '/ui/Positioned';
  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.blue[50],
        height: 300,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 70,
              top: 70,
              right: 0,
              bottom: 10,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/positioned_widget.dart';
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
