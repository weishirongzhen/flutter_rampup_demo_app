import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class PageViewWidget extends BaseSampleStatefulWidget {
  static String name = 'PageView';
  static String route = '/ui/PageView';

  @override
  BaseSampleStatefulWidgetState createState() => _PageViewWidget();
}

class _PageViewWidget extends BaseSampleStatefulWidgetState<PageViewWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/page_view_widget.dart';
  }

  @override
  String getTitle() {
    return PageViewWidget.name;
  }

  //<code>

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 200,

          //横向滚动
          child: PageView(
            children: <Widget>[
              Container(
                color: Colors.pink,
                child: Center(
                  child: Text('左右滑动我Page 1'),
                ),
              ),
              Container(
                color: Colors.cyan,
                child: Center(
                  child: Text('左右滑动我Page 2'),
                ),
              ),
              Container(
                color: Colors.deepPurple,
                child: Center(
                  child: Text('左右滑动我Page 3'),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          //竖向滚动
          child: PageView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                color: Colors.pink,
                child: Center(
                  child: Text('上下滑动我Page 1'),
                ),
              ),
              Container(
                color: Colors.cyan,
                child: Center(
                  child: Text('上下滑动我Page 2'),
                ),
              ),
              Container(
                color: Colors.deepPurple,
                child: Center(
                  child: Text('上下滑动我Page 3'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
//<code>
}
