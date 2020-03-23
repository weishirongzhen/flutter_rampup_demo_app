import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class PaddingWidget extends BaseSampleStatelessWidget {
  static String name = 'Padding';
  static String route = '/ui/Padding';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Hello'),
            ),
            color: Colors.blue,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              child: Text('Hello'),
            ),
            color: Colors.pink,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                bottom: 8,
              ),
              child: Text('Hello'),
            ),
            color: Colors.deepPurpleAccent,
          ),
        ],
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/padding_widget.dart';
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
