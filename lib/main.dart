import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'pages/total_accounts.dart';
import 'widgets/accounts_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      theme: ThemeData(
        fontFamily: "Inter",
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontSize: 14.0, color: Color(0xFFCED2D6)),
          bodyText2: TextStyle(fontSize: 18.0, color: Color(0xFFCED2D6)),
          headline1: TextStyle(fontSize: 36.0, color: Color(0xFFF6F7F9)),
          headline6: TextStyle(fontSize: 20.0, color: Color(0xFFF6F7F9)),
        ),
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          color: Color(0xFF102A43),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TotalAccounts(),
            ],
          ),
        ),
      ),
    );
  }
}
