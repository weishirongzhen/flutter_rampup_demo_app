
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutterrampupdemoapp/official_samples.dart';
import 'package:flutterrampupdemoapp/widgets_page.dart';
import 'package:oktoast/oktoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OKToast(
      radius: 4,
      textPadding: EdgeInsets.all(8),
      textStyle: TextStyle(fontSize: 18),
      position: ToastPosition.top,
      backgroundColor: Colors.black38,
      dismissOtherOnShow: true,
      child:MaterialApp(
        title: "Flutter Book",
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('zh', 'CH'),
          const Locale('en', 'US'),
        ],
        locale: Locale('zh'),

        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.light, primarySwatch: Colors.lightBlue),
//          darkTheme: ThemeData(brightness: Brightness.dark, primarySwatch: Colors.lightBlue, platform: TargetPlatform.iOS),
        themeMode: ThemeMode.light,
//          themeMode: ThemeMode.system,
        home: WidgetsPage(),
        routes: {...OfficialSamples().routes},
      ),
    );
  }
}
