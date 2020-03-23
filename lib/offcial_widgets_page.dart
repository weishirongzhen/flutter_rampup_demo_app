import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutterrampupdemoapp/official_samples.dart';
import 'package:flutterrampupdemoapp/providers/widgets_provider.dart';
import 'package:flutterrampupdemoapp/user_default.dart';
import 'package:provider/provider.dart';

class OfficialWidgetsPage extends StatefulWidget {
  @override
  _OfficialWidgetsPageState createState() => _OfficialWidgetsPageState();
}

class _OfficialWidgetsPageState extends State<OfficialWidgetsPage> {
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    scrollToOffset();

    super.initState();
  }

  void scrollToOffset() async {
    if (UserDefault.isRememberLastPosition()) {
      await Future.delayed(Duration(milliseconds: 100));
      _scrollController?.animateTo(UserDefault.getLastWidgetPosition(), duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WidgetsCollectionProvider>(builder: (context, provider, _) {
      return AnimationLimiter(
        child: ListView.separated(
            controller: _scrollController,
            itemCount: OfficialSamples().sample.length,
            separatorBuilder: (context, index) => Divider(
                  height: 1,
                ),
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 80),
                child: Container(
                  child: ScaleAnimation(
                    child: ListTile(
                      onTap: () {
                        print(_scrollController.offset);
                        UserDefault.saveLastWidgetPosition(_scrollController.offset);
                        Navigator.pushNamed(
                          context,
                          OfficialSamples().sample[index].route,
                        );
                      },
                      selected: true,
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      title: Text(
                        OfficialSamples().sample[index].name,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      subtitle: Text(
                        OfficialSamples().sample[index].description,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
      );
    });
  }
}
