import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class CircleAvatarWidget extends BaseSampleStatelessWidget {
  static String name = 'CircleAvatar';
  static String route = '/ui/CircleAvatar';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        SizedBox(
          width: 160,
          height: 160,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/app_icon.webp'),
            child: Text('F'),
          ),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/circle_avatar_widget.dart';
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
