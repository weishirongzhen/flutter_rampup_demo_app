import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ContainerWidget extends BaseSampleStatelessWidget {
  static String name = 'Container';
  static String route = '/ui/container';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ///固定高宽，设置一个背景色，特别说明：如果在设置了 decoration， 则不能在decoration外部设置背景色， 否则会报错
            Container(
              margin: EdgeInsets.all(8),
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              child: Text('container1'),
            ),

            ///作为背景
            Container(
              margin: EdgeInsets.all(8),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/demo_bg.webp',
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'container1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            ///以Z轴为旋转轴， 旋转一定弧度， borderRadius设置圆角，alignment设置child对齐方式
            Container(
              margin: EdgeInsets.only(
                left: 40,
                bottom: 20,
              ),
              padding: EdgeInsets.all(8),
              width: 100,
              transform: Matrix4.rotationZ(0.2),
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('container2'),
            ),

            ///指定位置的圆角
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Text('container3'),
            ),

            ///线性渐变
            Container(
              margin: EdgeInsets.all(8),
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue,
                    Colors.red,
                    Colors.purple,
                  ],
                ),
                color: Colors.blueGrey,
              ),
              child: Text('container4'),
            ),

            ///径向渐变
//            Container(
//              margin: EdgeInsets.all(8),
//              width: 200,
//              height: 100,
//              decoration: BoxDecoration(
//                gradient: RadialGradient(
//                  colors: [
//                    Color(0xFFFFFF00),
//                    Color(0xFF00FF00),
//                    Color(0xFF00FFFF),
//                  ],
//                  radius: 0.2,
//                  tileMode: TileMode.mirror,
//                ),
//                color: Colors.blueGrey,
//              ),
//              child: Text('container5'),
//            ),

            ///扫描渐变，圆形形状
            Container(
              margin: EdgeInsets.all(8),
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: SweepGradient(
                  colors: [
                    Color(0xFFFFFF00),
                    Color(0xFFaa3300),
                    Color(0xFFFFFF00),
                  ],
                  startAngle: 0.0,
                  endAngle: 3.14,
                ),
                color: Colors.blueGrey,
              ),
              child: Center(
                child: Text('container6'),
              ),
            ),

            ///添加边框
            Container(
              margin: EdgeInsets.all(8),
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.pink,
                border: Border.all(
                  color: Colors.blueGrey,
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('container7'),
            ),

            ///添加阴影
            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.8),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueAccent,
                    offset: Offset(10, 10),
                    blurRadius: 10,
                  ),
                  BoxShadow(
                    color: Colors.red,
                    offset: Offset(-10, 10),
                    blurRadius: 10,
                  ),
                  BoxShadow(
                    color: Colors.yellow,
                    offset: Offset(10, -10),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'container8',
                ),
              ),
            ),
          ],
        ),
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/container_widget.dart';
  }

  @override
  String getTitle() {
    return 'Container';
  }

  @override
  String getDemoUrl() {
    return 'https://book.flutterchina.club/chapter5/container.html';
  }
}
