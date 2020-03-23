import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

//<code>
class CupertinoPageScaffoldWidget extends BaseSampleStatelessWidget {
  static String name = 'CupertinoPageScaffold';
  static String route = '/ui/CupertinoPageScaffold';

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => IOSStylePage()));
          },
          child: Text('Click me'),
        )
      ],
    );
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/cupertino_page_scaffold_widget.dart';
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

class IOSStylePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: true,
        leading: CupertinoNavigationBarBackButton(
          previousPageTitle: 'Home',
        ),
        previousPageTitle: '上一级',
        middle: const Text('标题'),
      ),
      child: Scaffold(
        body: Center(
          child: Text('Hello Flutter'),
        ),
      ),
    );
  }
}
//<code>
