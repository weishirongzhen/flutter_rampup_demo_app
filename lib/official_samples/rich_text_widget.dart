import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class RichTextWidget extends BaseSampleStatelessWidget {
  static String name = 'RichText';
  static String route = '/ui/RichText';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    ///提供更底层的文字显示api， 不同于Text, Text在被 Scaffold 包裹的时候，会继承Scaffold的主题，而RichText不会
    return RichText(
      text: TextSpan(
        text: 'Hello ',
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: 'bold',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: ' world!'),
          TextSpan(
            text: ' Flutter ',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 40,
              color: Colors.blue,
            ),
          ),
          TextSpan(
            text: 'How are you?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/rich_text_widget.dart';
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
