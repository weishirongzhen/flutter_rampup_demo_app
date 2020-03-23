import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class FormWidget extends BaseSampleStatefulWidget {
  static String name = 'Form';
  static String route = '/ui/Form';

  @override
  BaseSampleStatefulWidgetState createState() => _FormWidget();
}

class _FormWidget extends BaseSampleStatefulWidgetState<FormWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/form_widget.dart';
  }

  @override
  String getTitle() {
    return FormWidget.name;
  }

  //<code>
  final _formKey = GlobalKey<FormState>();

  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(hintText: "在不输入和输入的状态分别点击提交试试"),
              //validator 不为空则说明验证不通过， null为验证通过
              validator: (value) {
                if (value.isEmpty) {
                  return '不能为空';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    //验证通过
                  }
                },
                child: Text('提交'),
              ),
            ),
          ],
        ),
      ),
    );
  }
//<code>
}
