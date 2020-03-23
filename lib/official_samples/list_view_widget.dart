import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ListViewWidget extends BaseSampleStatelessWidget {
  static String name = 'ListView';
  static String route = '/ui/ListView';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Row(
      children: <Widget>[
        Expanded(
          //固定个数的列表
          child: Column(
            children: <Widget>[
              ListView(
                ///shrinkWrap  这个属性意思是只占用listview该有的高度，如果listview是column的child那么就必须为true，否则异常
                shrinkWrap: true,
                children: <Widget>[
                  Text('Item 1'),
                  Text('Item 2'),
                  Text('Item 3'),
                  Text('Item 4'),
                  Text('Item 5'),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          //固定个数的列表
          child: ListView(
            shrinkWrap: false,
            children: <Widget>[
              Text('Item 1'),
              Text('Item 2'),
              Text('Item 3'),
              Text('Item 4'),
              Text('Item 5'),
            ],
          ),
        ),
        Expanded(
          //builder模式, 可回收
          child: ListView.builder(
            itemBuilder: (context, index) => Text('Item $index'),
            itemCount: 20,
          ),
        ),
        Expanded(
          //separated模式, 可添加自定义行分隔线， 可回收
          child: ListView.separated(
              itemBuilder: (context, index) => Text('Item $index'),
              separatorBuilder: (context, index) => Divider(
                    color: Colors.blue,
                    thickness: index * 0.5,
                  ),
              itemCount: 20),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/list_view_widget.dart';
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
