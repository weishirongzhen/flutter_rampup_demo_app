import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class RefreshIndicatorWidget extends BaseSampleStatelessWidget {
  static String name = 'RefreshIndicator';
  static String route = '/ui/RefreshIndicator';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return RefreshIndicator(
      onRefresh: () async {
        return await Future.delayed(
          Duration(
            seconds: 3,
          ),
        );
      },
      child: ListView.separated(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('item $index'),
        ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: 30,
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/refresh_indicator_widget.dart';
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
