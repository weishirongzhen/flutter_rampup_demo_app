import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class CupertinoContextMenuWidget extends BaseSampleStatelessWidget {
  static String name = 'CupertinoContextMenu';
  static String route = '/ui/CupertinoContextMenu';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CupertinoContextMenu(
            child: CupertinoButton.filled(
              onPressed: null,
              child: Text('Long Click me'),
            ),
            actions: <Widget>[
              CupertinoContextMenuAction(
                child: const Text('选择1'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: const Text('选择2'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: const Text('选择3'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: const Text('选择4'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          )
        ],
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/cupertino_context_menu_widget.dart';
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
