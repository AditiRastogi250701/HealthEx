// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:healthex/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          drawer: Container(
            width: 250,
            color: Colors.white,
            child: Column(
              children: [],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.purple,
            // ignore: prefer_const_literals_to_create_immutables
            actions: [
              Icon(Icons.exit_to_app),
              SizedBox(
                width: 10,
              )
            ],
            elevation: 0,
            centerTitle: true,
            title: Text('HealthEx'),
          ),
          backgroundColor: Colors.black,
          body: HomePage(),
        ),
      ),
    );
  }
}
