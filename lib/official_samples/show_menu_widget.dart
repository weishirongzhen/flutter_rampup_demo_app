import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class ShowMenuWidget extends BaseSampleStatelessWidget {
  static String name = 'ShowMenu';
  static String route = '/ui/ShowMenu';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return RaisedButton(
      onPressed: () {
        showMenu(context: context, position: RelativeRect.fill, items: <PopupMenuEntry>[
          PopupMenuItem(child: Text('ONE')),
          PopupMenuDivider(),
          CheckedPopupMenuItem(
            child: Text('TWO'),
            checked: true,
          ),
          PopupMenuDivider(),
          PopupMenuItem(child: Text('THREE')),
        ]);
      },
      child: Text('Click me'),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/show_menu_widget.dart';
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
