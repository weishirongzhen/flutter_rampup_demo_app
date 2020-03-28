import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class AnimatedPhysicalModelWidget extends BaseSampleStatefulWidget {
  static String name = 'AnimatedPhysicalModel';
  static String route = '/ui/AnimatedPhysicalModel';

  @override
  BaseSampleStatefulWidgetState createState() => _AnimatedPhysicalModelWidget();
}

class _AnimatedPhysicalModelWidget extends BaseSampleStatefulWidgetState<AnimatedPhysicalModelWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/animated_physical_model_widget.dart';
  }

  @override
  String getTitle() {
    return AnimatedPhysicalModelWidget.name;
  }

  //<code>

  bool _change = true;

  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ///点击后 改变Z轴海拔高度
          AnimatedPhysicalModel(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOutQuad,
            elevation: _change ? 0 : 20,
            shape: BoxShape.rectangle,
            shadowColor: Colors.redAccent,
            color: Colors.white,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blue[50],
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: const Text('Click me'),
            onPressed: () {
              setState(() {
                _change = !_change;
              });
            },
          ),
        ],
      ),
    );
  }
//<code>
}
