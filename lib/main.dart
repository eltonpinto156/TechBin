import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:tech_bin/authentication/root_page.dart';

import 'widgets/RouteObserver.dart';
import 'authentication/auth.dart';
import 'authentication/root_page.dart';
import 'views/welcom_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return new MaterialApp(
        title: 'Fill Me',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        navigatorObservers: <NavigatorObserver>[
          MyRouteObserver(), // this will listen all changes
        ],
        routes: {
          '/': (context) {
            return Welcome();
          },
          '/RootPage': (context) {
            return RootPage(
              auth: new Auth(),
              st: 'Register',
            );
          },
        });
  }
}
