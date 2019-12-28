import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:preferencias_usuario/pages/home_page.dart';
import 'package:preferencias_usuario/pages/settings_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (BuildContext context) => HomePage(),
        SettingsPage.routeName: (BuildContext context) => SettingsPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App AppBar'),
        ),
        body: Center(
          child: Container(
            child: Text(
              "Hello, world!",
            ),
          ),
        ),
      ),
    );
  }
}
