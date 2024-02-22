import 'package:flutter/material.dart';
import 'package:ng_demohomework9/pages/fallure_page.dart';
import 'package:ng_demohomework9/pages/gift_page.dart';
import 'package:ng_demohomework9/pages/home_page.dart';
import 'package:ng_demohomework9/pages/successful_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        SuccessfulPage.id: (context) => SuccessfulPage(),
        FallurePage.id: (context) => FallurePage(),
        GiftPage.id: (context) => GiftPage(),
      },
    );
  }
}
