import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutterrampupdemoapp/official_samples.dart';
import 'package:flutterrampupdemoapp/providers/widgets_provider.dart';
import 'package:flutterrampupdemoapp/user_default.dart';
import 'package:flutterrampupdemoapp/widgets_page.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserDefault.init();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  if (Platform.isAndroid) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
  }
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
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => WidgetsCollectionProvider()),
        ],
        child: MaterialApp(
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
          theme: ThemeData(brightness: Brightness.light, primarySwatch: Colors.lightBlue, platform: TargetPlatform.iOS),
//          darkTheme: ThemeData(brightness: Brightness.dark, primarySwatch: Colors.lightBlue, platform: TargetPlatform.iOS),
          themeMode: ThemeMode.light,
//          themeMode: ThemeMode.system,
          home: WidgetsPage(),
          routes: {...OfficialSamples().routes},
        ),
      ),
    );
  }
}
