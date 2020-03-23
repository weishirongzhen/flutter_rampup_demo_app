import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LongClickAddToCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black54,
        child: Align(alignment: Alignment.centerRight, child: fistOpenTips()),
      ),
    );
  }

  Widget fistOpenTips() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Lottie.asset('assets/lottie/long_click.json', width: 200),
        Text(
          '长按可以添加到收藏',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ],
    );
  }
}
