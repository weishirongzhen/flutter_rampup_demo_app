import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class CupertinoTabBarWidget extends BaseSampleStatefulWidget {
  static String name = 'CupertinoTabBar';
  static String route = '/ui/CupertinoTabBar';

  @override
  BaseSampleStatefulWidgetState createState() => _CupertinoTabBarWidget();
}

class _CupertinoTabBarWidget extends BaseSampleStatefulWidgetState<CupertinoTabBarWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/cupertino_tab_bar_widget.dart';
  }

  @override
  String getTitle() {
    return CupertinoTabBarWidget.name;
  }

  //<code>
  int _index = 0;

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        CupertinoTabBar(
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.battery_charging),
              title: Text('Battery'),
            ),
          ],
          currentIndex: _index,
        )
      ],
    );
  }
//<code>
}
