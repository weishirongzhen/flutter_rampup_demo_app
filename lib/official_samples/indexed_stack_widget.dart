import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class IndexedStackWidget extends BaseSampleStatefulWidget {
  static String name = 'IndexedStack';
  static String route = '/ui/IndexedStack';

  @override
  BaseSampleStatefulWidgetState createState() => _IndexedStackWidget();
}

class _IndexedStackWidget extends BaseSampleStatefulWidgetState<IndexedStackWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/indexed_stack_widget.dart';
  }

  @override
  String getTitle() {
    return IndexedStackWidget.name;
  }

  //<code>
  int _index = 0;

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 300,
          child: IndexedStack(
            index: _index,
            children: <Widget>[
              Container(
                color: Colors.pink,
                child: Center(
                  child: Text('Page 1'),
                ),
              ),
              Container(
                color: Colors.cyan,
                child: Center(
                  child: Text('Page 2'),
                ),
              ),
              Container(
                color: Colors.deepPurple,
                child: Center(
                  child: Text('Page 3'),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                if (_index <= 0) return;
                setState(() {
                  _index -= 1;
                });
              },
              child: Text(
                "上一层",
              ),
            ),
            FlatButton(
              onPressed: () {
                if (_index >= 2) return;
                setState(() {
                  _index += 1;
                });
              },
              child: Text(
                "下一层",
              ),
            )
          ],
        )
      ],
    );
  }
//<code>
}
