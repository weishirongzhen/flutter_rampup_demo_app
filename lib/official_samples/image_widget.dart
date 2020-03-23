import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ImageWidget extends BaseSampleStatelessWidget {
  static String name = 'Image';
  static String route = '/ui/Image';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return SingleChildScrollView(
      child: Column(
        //这里只展示了基本用法， 从网络加载，从本地资源加载，还有从 memory 和file  加载， 本身自带很多属性,这里就不展开了,请点开链接参考
        children: <Widget>[
//          Image.memory(),
//          Image.file(),
          Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584014921891&di=c1cf5c43afa0277947efb11ccec8a308&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-01-30%2F5a7018031beb6.jpg'),
          Image.asset(
            'assets/images/butterfly.webp',
            width: 100,
            height: 200,
            fit: BoxFit.fitWidth,
          ),
          Image.asset(
            'assets/images/butterfly.webp',
            width: 200,
            height: 400,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/image_widget.dart';
  }

  @override
  String getTitle() {
    return name;
  }

  @override
  String getDemoUrl() {
    return 'https://www.jianshu.com/p/68879dd00f81';
  }
}
