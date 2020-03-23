import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterrampupdemoapp/offcial_widgets_page.dart';
import 'package:flutterrampupdemoapp/official_samples.dart';
import 'package:flutterrampupdemoapp/providers/widgets_provider.dart';
import 'package:flutterrampupdemoapp/search_page.dart';
import 'package:provider/provider.dart';

class WidgetsPage extends StatefulWidget {
  final PageController pageController;

  const WidgetsPage({Key key, this.pageController}) : super(key: key);

  @override
  _WidgetsPageState createState() => _WidgetsPageState();
}

class _WidgetsPageState extends State<WidgetsPage> with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 10,
        automaticallyImplyLeading: false,
        title: InkWell(
          borderRadius: BorderRadius.circular(4),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => SearchPage()));
          },
          child: Container(
            width: double.infinity,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.grey.withOpacity(0.2),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 14,
                ),
                Text(
                  'Search Widget (Total ${OfficialSamples().sample.length})',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Consumer<WidgetsCollectionProvider>(builder: (context, provider, _) {
        return OfficialWidgetsPage();
      }),
    );
  }

  void goToLogin() {
    widget.pageController.jumpToPage(2);
  }

  @override
  bool get wantKeepAlive => true;
}
