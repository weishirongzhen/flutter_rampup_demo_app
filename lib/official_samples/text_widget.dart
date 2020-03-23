import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class TextWidget extends BaseSampleStatelessWidget {
  static String name = 'Text';
  static String route = '/ui/text';

  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: body(),
    );
  }

  Widget body() {
    return ListView(
      children: <Widget>[
        //<code>
        ///基础文字显示，默认风格
        Text(
          '(1)Hello, Flutter! How are you?',
        ),
        Divider(),

        ///文字居中，文字权重的粗体
        Text(
          '(2)Hello, Flutter! How are you?',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Divider(),

        ///文字居右，文字风格斜体， 词组间距，字符间距
        Text(
          '(3)Hello, Flutter! How are you?',
          textAlign: TextAlign.end,
          style: TextStyle(
            fontStyle: FontStyle.italic,
            letterSpacing: 2,
            wordSpacing: 4,
          ),
        ),
        Divider(),

        ///超过一行的文字，结尾用省略号代替
        Text(
          '(4)Hello, Flutter! How are you?' * 3,
          overflow: TextOverflow.ellipsis,
        ),
        Divider(),

        ///文字大小和颜色， softWrap = false 为不自动换行
        Text(
          '(5)Hello, Flutter! How are you?' * 3,
          softWrap: false,
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
        Divider(),

        ///文字颜色和背景色
        Text(
          '(6)Hello, Flutter! How are you?' * 3,
          style: TextStyle(
            color: Colors.yellow,
            backgroundColor: Colors.green,
          ),
        ),
        Divider(),

        ///复杂文字风格显示
        Text.rich(
          TextSpan(
            text: '(7)Hello',
            children: <TextSpan>[
              TextSpan(
                text: ' Flutter ',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 40,
                  color: Colors.blue,
                ),
              ),
              TextSpan(
                text: 'How are you?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
        Divider(),

        ///文字阴影，阴影颜色，阴影偏移量，阴影模糊程度，支持多重阴影
        Text(
          '(8)Hello, Flutter! How are you?',
          style: TextStyle(
            fontSize: 20,
            shadows: [
              Shadow(
                color: Colors.lightBlue,
                offset: Offset(8, 8),
                blurRadius: 3,
              ),
              Shadow(
                color: Colors.redAccent,
                offset: Offset(0, -5),
                blurRadius: 2,
              ),
            ],
          ),
        ),
        Divider(),
        //<code>
      ],
    );
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/text_widget.dart';
  }

  @override
  String getTitle() {
    return name;
  }

  @override
  String getDemoUrl() {
    return 'https://book.flutterchina.club/chapter3/text.html';
  }
}
