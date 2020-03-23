import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class PopupMenuButtonWidget extends BaseSampleStatefulWidget {
  static String name = 'PopupMenuButton';
  static String route = '/ui/PopupMenuButton';

  @override
  BaseSampleStatefulWidgetState createState() => _PopupMenuButtonWidget();
}

class _PopupMenuButtonWidget extends BaseSampleStatefulWidgetState<PopupMenuButtonWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/popup_menu_button_widget.dart';
  }

  @override
  String getTitle() {
    return PopupMenuButtonWidget.name;
  }

  //<code>
  String _selection;

  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          PopupMenuButton<String>(
            onSelected: (String result) {
              setState(() {
                _selection = result;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'WhyFarther.harder',
                child: Text('Working a lot harder'),
              ),
              const PopupMenuItem<String>(
                value: 'WhyFarther.smarter',
                child: Text('Being a lot smarter'),
              ),
              const PopupMenuItem<String>(
                value: 'WhyFarther.selfStarter',
                child: Text('Being a self-starter'),
              ),
              const PopupMenuItem<String>(
                value: 'WhyFarther.tradingCharter',
                child: Text('Placed in charge of trading charter'),
              ),
            ],
          ),
          Text('Click above'),
        ],
      ),
    );
  }
//<code>
}
