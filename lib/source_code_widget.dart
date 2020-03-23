import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/idea.dart';

class SourceCodeWidget extends StatelessWidget {
  final String path;

  SourceCodeWidget(this.path);

  String getWidgetCode(String rawCode) {
    var code = rawCode.split('//<code>');
    return code[1];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder<String>(
          future: rootBundle.loadString(path),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HighlightView(
                getWidgetCode(snapshot.data),
                language: 'dart',
                theme: ideaTheme,
                textStyle: TextStyle(fontSize: 13),
                padding: EdgeInsets.all(8),
              );
            } else {
              return SizedBox();
            }
          }),
    );
  }
}
