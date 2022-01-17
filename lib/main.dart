import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic_design_app/chart.dart';
import 'package:neumorphic_design_app/sidebar/sidebar_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neumorphic Design',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
      ),
      home: Homepage(),
    );
  }
}

final data = [55.0, 90.0, 50.0, 40.0, 35.0, 55.0, 70.0, 100.0];

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: SizedBox(
            height: 300,
            width: 300,
            child: Chart(
              data: data,
            ),
          ),
        ),
      ),
    );
  }
}
