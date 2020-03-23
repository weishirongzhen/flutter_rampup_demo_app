import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class FlowWidget extends BaseSampleStatefulWidget {
  static String name = 'Flow';
  static String route = '/ui/Flow';

  @override
  BaseSampleStatefulWidgetState createState() => _FlowWidget();
}

class _FlowWidget extends BaseSampleStatefulWidgetState<FlowWidget> {
//<code>
  AnimationController menuAnimation;
  IconData lastTapped = Icons.notifications;
  final List<IconData> menuItems = <IconData>[
    Icons.home,
    Icons.new_releases,
    Icons.notifications,
    Icons.settings,
    Icons.menu,
  ];

  void _updateMenu(IconData icon) {
    if (icon != Icons.menu) setState(() => lastTapped = icon);
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/flow_widget.dart';
  }

  @override
  String getTitle() {
    return FlowWidget.name;
  }

  @override
  void initState() {
    menuAnimation = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    super.initState();
  }

  Widget flowMenuItem(IconData icon) {
    final double buttonDiameter = MediaQuery.of(context).size.width / menuItems.length - 10;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 4,
      ),
      child: RawMaterialButton(
        fillColor: lastTapped == icon ? Colors.pinkAccent : Colors.blue,
        splashColor: Colors.amber[100],
        shape: CircleBorder(),
        constraints: BoxConstraints.tight(Size(buttonDiameter, buttonDiameter)),
        onPressed: () {
          _updateMenu(icon);
          menuAnimation.status == AnimationStatus.completed ? menuAnimation.reverse() : menuAnimation.forward();
        },
        child: Icon(
          icon,
          color: Colors.white,
          size: 30.0,
        ),
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Container(
      child: Flow(
        delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
        children: menuItems.map<Widget>((IconData icon) => flowMenuItem(icon)).toList(),
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  FlowMenuDelegate({this.menuAnimation}) : super(repaint: menuAnimation);

  final Animation<double> menuAnimation;

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double dx = 0.0;
    for (int i = 0; i < context.childCount; ++i) {
      dx = context.getChildSize(i).width * i;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          dx * menuAnimation.value,
          0,
          0,
        ),
      );
    }
  }
}

//<code>
