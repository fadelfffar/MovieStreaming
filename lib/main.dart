import 'package:flutter/material.dart';
import 'package:moviezstreaming/search_page.dart';

import 'home_page.dart'; 
void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'Named Routes Demo',
  // Start the app with the "/" named route. In this case, the app starts
  // on the FirstScreen widget.
  initialRoute: '/',
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => const HomePage(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/search': (context) => const SearchPage(),
      },
    );
  }
} 