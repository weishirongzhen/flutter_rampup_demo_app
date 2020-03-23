import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class TextFieldWidget extends BaseSampleStatelessWidget {

  static String name = 'TextField';
  static String route = '/ui/TextField';
  @override
  Widget buildBody(BuildContext context) {
    //<code>
    //这个控件比较复杂， 具体请看提供的链接
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password',
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/text_field_widget.dart';
  }

  @override
  String getTitle() {
    return name;
  }

    @override
  String getDemoUrl() {
    return 'https://www.jianshu.com/p/483f57067516';
  }
}
