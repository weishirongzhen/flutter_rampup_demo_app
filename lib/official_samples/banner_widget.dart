import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class BannerWidget extends BaseSampleStatelessWidget {
  static String name = 'Banner';
  static String route = '/ui/Banner';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(10.0),
          height: 100,
          child: Banner(
            message: "Flutter",
            location: BannerLocation.topEnd,
            color: Colors.red,
            child: Container(
              color: Colors.blueGrey,
              height: 100,
              child: Center(
                child: Text("Hello Flutter"),
              ),
            ),
          ),
        ),

        ///切边
        Container(
          margin: const EdgeInsets.all(10.0),
          height: 100,
          child: ClipRect(
            child: Banner(
              message: "Flutter",
              location: BannerLocation.topEnd,
              color: Colors.red,
              child: Container(
                color: Colors.blueGrey,
                height: 100,
                child: Center(
                  child: Text("Hello Flutter"),
                ),
              ),
            ),
          ),
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/banner_widget.dart';
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
