import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class TextFormFieldWidget extends BaseSampleStatelessWidget {
  static String name = 'TextFormField';
  static String route = '/ui/TextFormField';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    //这个控件比较复杂， 具体请看提供的链接
    return TextFormField(
      obscureText: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: '啦啦啦',
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/text_form_field_widget.dart';
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
