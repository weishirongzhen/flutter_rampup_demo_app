import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class StreamBuilderWidget extends BaseSampleStatelessWidget {
  static String name = 'StreamBuilder';
  static String route = '/ui/StreamBuilder';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    //与FutureBuilder类似， 但是StreamBuilder接受的是stream， 每次流改变都会刷新builder之中的UI
    return StreamBuilder<String>(
        stream: Stream.fromIterable(['elements']),
        builder: (context, snapshot) {
          return Container(
            child: Text(snapshot.hasData ? snapshot.data : ''),
          );
        });
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/stream_builder_widget.dart';
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
