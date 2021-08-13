import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pizza_apps/constants.dart';
import 'package:pizza_apps/pages/home/home_page.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: secondaryColor,
    statusBarIconBrightness: Brightness.dark,
    // navigation bar color
    statusBarColor: secondaryColor, // status bar color
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizza App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
