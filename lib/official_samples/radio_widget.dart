import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class RadioWidget extends BaseSampleStatefulWidget {
  static String name = 'Radio';
  static String route = '/ui/Radio';

  @override
  BaseSampleStatefulWidgetState createState() => _RadioWidget();
}

//<code>
enum MyValue { one, two }

class _RadioWidget extends BaseSampleStatefulWidgetState<RadioWidget> {
  MyValue _value = MyValue.one;

  @override
  String getFilePath() {
    return 'lib/official_samples/radio_widget.dart';
  }

  @override
  String getTitle() {
    return RadioWidget.name;
  }

  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Radio(
            value: MyValue.one,
            groupValue: _value,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),
          Radio(
            value: MyValue.two,
            groupValue: _value,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          )
        ],
      ),
    );
  }
//<code>
}
