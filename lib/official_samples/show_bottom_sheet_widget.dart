import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ShowBottomSheetWidget extends BaseSampleStatelessWidget {
  static String name = 'ShowBottomSheet';
  static String route = '/ui/ShowBottomSheet';

  @override
  Widget buildBody(BuildContext context) {
    //<code>

    //showBottomSheet  需要有Scaffold的context， 并且 会显示在BottomNavigationBar的 高度只上
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('One')),
          BottomNavigationBarItem(icon: Icon(Icons.error), title: Text('Two')),
        ],
      ),
      body: Center(
        child: Builder(builder: (context) {
          return RaisedButton(
            onPressed: () {
              showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 300,
                      width: double.infinity,
                      color: Colors.lightBlue,
                      child: Text('底部弹出框'),
                    );
                  });
            },
            child: Text('Click me'),
          );
        }),
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/show_bottom_sheet_widget.dart';
  }

  @override
  String getTitle() {
    return name;
  }

  @override
  String getDemoUrl() {
    return '';
  }
}
