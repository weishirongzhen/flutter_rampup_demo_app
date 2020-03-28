import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';


class AnimatedListWidget extends BaseSampleStatefulWidget {
  static String name = 'AnimatedList';
  static String route = '/ui/AnimatedList';

  @override
  BaseSampleStatefulWidgetState createState() => _AnimatedListWidget();
}

class _AnimatedListWidget extends BaseSampleStatefulWidgetState<AnimatedListWidget> {



  @override
  String getFilePath() {
    return 'lib/official_samples/animated_list_widget.dart';
  }

  @override
  String getTitle() {
    return AnimatedListWidget.name;
  }

  //<code>

  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  List<String> _items = List();

  Widget _buildItem(BuildContext context, int index, animation) {
    String item = _items[index];
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1, 0),
        end: Offset.zero,
      ).animate(animation),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          item,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              height: double.infinity,
              child: AnimatedList(
                key: listKey,
                initialItemCount: _items.length,
                itemBuilder: (context, index, animation) {
                  return _buildItem(context, index, animation);
                },
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  setState(() {
                    listKey.currentState.insertItem(
                      0,
                      duration: const Duration(milliseconds: 300),
                    );
                    _items.add('Hello flutter');
                  });
                },
                child: Text(
                  "插入一条",
                ),
              ),
              RaisedButton(
                onPressed: () {
                  if (_items.length <= 1) return;
                  listKey.currentState.removeItem(
                    0,
                    (_, animation) => _buildItem(context, 0, animation),
                    duration: const Duration(milliseconds: 300),
                  );
                  setState(() {
                    _items.removeAt(0);
                  });
                },
                child: Text(
                  "删除一条",
                ),
              )
            ],
          )
        ],
      ),
    );
  }
//<code>
}
