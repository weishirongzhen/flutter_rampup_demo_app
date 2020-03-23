import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class GridViewWidget extends BaseSampleStatelessWidget {
  static String name = 'GridView';
  static String route = '/ui/GridView';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        ///固定个数， 使用GridView.count的构造方法
        GridView.count(
          //左右间隔
          crossAxisSpacing: 10,
          //上下间隔
          mainAxisSpacing: 2,

          ///每行多少个
          crossAxisCount: 3,
          children: <Widget>[
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.deepPurpleAccent,
            ),
          ],
          shrinkWrap: true,
        ),
        Expanded(
          ///builder 模式
          child: GridView.builder(
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                childAspectRatio: 0.5, // child宽高比例
              ),
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.deepPurpleAccent,
                  child: Center(child: Text('$index')),
                );
              }),
        )
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/grid_view_widget.dart';
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
