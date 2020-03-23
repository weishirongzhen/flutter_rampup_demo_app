import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

//<code>
///跳转到的页面
class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },

          /// tag 与上一页面保持一致
          child: Hero(
            tag: 'flutterbook',
            child: Center(
              child: Image.asset(
                'assets/images/app_icon.webp',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HeroWidget extends BaseSampleStatelessWidget {
  static String name = 'Hero';
  static String route = '/ui/HeroWidget';

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => HeroPage(),
              ),
            );
          },

          /// tag 只要与下一页面保持一致且唯一就行
          child: Hero(
            tag: 'flutterbook',
            child: Image.asset(
              'assets/images/app_icon.webp',
              width: 100,
              height: 100,
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Text('Click me'),
            Icon(Icons.arrow_upward),
          ],
        )
      ],
    );
  }

  //<code>

  @override
  String getFilePath() {
    return 'lib/official_samples/hero_widget.dart';
  }

  @override
  String getTitle() {
    return name;
  }

  @override
  String getDemoUrl() {
    return 'https://flutterchina.club/animations/hero-animations/';
  }
}
