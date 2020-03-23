import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class FadeInImageWidget extends BaseSampleStatelessWidget {
  static String name = 'FadeInImage';
  static String route = '/ui/FadeInImage';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    //就比Image一些动画属性，其他和Image一致
    return Container(
      child: FadeInImage.assetNetwork(
          placeholder: "加载中",
          image:
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584014921891&di=c1cf5c43afa0277947efb11ccec8a308&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-01-30%2F5a7018031beb6.jpg"),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/fade_in_image_widget.dart';
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
