//import 'package:aunty_rafiki/views/pages/home_page.dart';
// import 'package:aunty_rafiki/views/pages/loginpage.dart';
import 'package:aunty_rafiki/views/pages/loginpage.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
