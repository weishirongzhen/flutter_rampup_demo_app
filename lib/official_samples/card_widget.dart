import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class CardWidget extends BaseSampleStatelessWidget {
  static String name = 'Card';
  static String route = '/ui/Card';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('The Enchanted Nightingale'),
                  subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('BUY TICKETS'),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: const Text('LISTEN'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),

        ///自定义圆角,背景色
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.yellowAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
              ),
            ),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('The Enchanted Nightingale'),
                  subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('BUY TICKETS'),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: const Text('LISTEN'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/card_widget.dart';
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
