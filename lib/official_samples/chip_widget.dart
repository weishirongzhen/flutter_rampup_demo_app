import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ChipWidget extends BaseSampleStatelessWidget {
  static String name = 'Chip';
  static String route = '/ui/Chip';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    ///Chip风格Widget， 其实用Container也可以实现，Google喜欢每种风格都会重新创造一个Widget来实现
    return Chip(
      avatar: CircleAvatar(
        backgroundColor: Colors.grey,
        child: Text('F'),
      ),
      label: Text('Hello Flutter'),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/chip_widget.dart';
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
