import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ClipOvalWidget extends BaseSampleStatelessWidget {
  static String name = 'ClipOval';
  static String route = '/ui/ClipOval';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ClipOval(
            child: SizedBox(
              width: 300,
              height: 200,
              child: Image.asset(
                'assets/images/butterfly.webp',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ClipOval(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Image.asset(
                'assets/images/butterfly.webp',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ClipOval(
            child: SizedBox(
              width: 300,
              height: 100,
              child: Image.asset(
                'assets/images/butterfly.webp',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ClipOval(
            child: SizedBox(
              width: 100,
              height: 300,
              child: Image.asset(
                'assets/images/butterfly.webp',
                fit: BoxFit.cover,
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
    return 'lib/official_samples/clip_oval_widget.dart';
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
