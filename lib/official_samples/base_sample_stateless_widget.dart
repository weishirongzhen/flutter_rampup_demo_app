import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/providers/base_sample_widget_provider.dart';
import 'package:flutterrampupdemoapp/source_code_widget.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class BaseSampleStatelessWidget extends StatelessWidget {
  Widget buildBody(BuildContext context);

  String getTitle();

  String getFilePath();

  String getDemoUrl() {
    return '';
  }

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BaseSampleWidgetProvider(),
        ),
      ],
      child: Consumer<BaseSampleWidgetProvider>(builder: (context, snapshot, _) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            titleSpacing: 0,
            centerTitle: false,
            title: Text(getTitle()),
            actions: <Widget>[
              getDemoUrl().isNotEmpty
                  ? IconButton(
                      onPressed: () async {
                        if (await canLaunch(getDemoUrl())) {
                          launch(getDemoUrl());
                        }
                      },
                      icon: Icon(Icons.link),
                    )
                  : SizedBox(),
              InkWell(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), bottomLeft: Radius.circular(40)),
                onTap: () {
                  snapshot.nextPage();
                  _controller.animateToPage(snapshot.currentPage, duration: Duration(milliseconds: 200), curve: Curves.decelerate);
                },
                child: SizedBox(
                  width: 80,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        snapshot.buttonText,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: PageView(
            controller: _controller,
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Scaffold(
                body: Center(child: buildBody(context)),
                backgroundColor: Colors.white,
              ),
              SourceCodeWidget(getFilePath()),
            ],
          ),
        );
      }),
    );
  }
}
