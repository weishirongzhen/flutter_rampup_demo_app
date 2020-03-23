import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class DrawerWidget extends BaseSampleStatefulWidget {
  static String name = 'Drawer';
  static String route = '/ui/Drawer';

  @override
  BaseSampleStatefulWidgetState createState() => _DrawerWidget();
}

class _DrawerWidget extends BaseSampleStatefulWidgetState<DrawerWidget> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  String getFilePath() {
    return 'lib/official_samples/drawer_widget.dart';
  }

  @override
  String getTitle() {
    return DrawerWidget.name;
  }

  //<code>

  @override
  Widget buildBody(BuildContext context) {
    return Scaffold(
      endDrawer: Container(
        width: 200,
        height: double.infinity,
        color: Colors.blue,
      ),

      ///左边也可以滑出， 因为这里左滑是退出当前页面，只展示右滑出现的
//      drawer: Container(
//        width: 100,
//        height: double.infinity,
//        color: Colors.blue,
//      ),
    body: Center(child: Text('在屏幕边缘，从右往左划试试'),),
    );
  }
//<code>
}
