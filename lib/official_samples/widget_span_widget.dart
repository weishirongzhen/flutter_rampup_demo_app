import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class WidgetSpanWidget extends BaseSampleStatelessWidget {
  static String name = 'WidgetSpan';
  static String route = '/ui/WidgetSpan';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    //结合Text.rich实现图文混排
    return Text.rich(TextSpan(
      children: <InlineSpan>[
        TextSpan(text: 'Flutter is'),
        WidgetSpan(
          child: SizedBox(
            child: Card(
              child: Image.asset(
                'assets/images/leading.webp',
                width: 80,
                height: 80,
              ),
            ),
          ),
        ),
        TextSpan(text: 'the best!'),
      ],
    ));
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/widget_span_widget.dart';
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
