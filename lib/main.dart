import 'package:flutter/material.dart';
import 'package:flutter_app/screens/EligiblityScreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/states/EligiblityScreenProvider.dart';
import 'package:flutter_app/states/MemberProvider.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => EligiblityScreenProvider()),
        ChangeNotifierProvider(create: (context) => MemberProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: EligiblityScreen(),
    );
  }
}
