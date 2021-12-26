import 'package:flutter/material.dart';
import 'package:meneey_ui/dashboard.dart';

void main() {
  runApp(const MyApp());
}

Color customYellow = Color(0xFFFBB03B);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.purple,
              displayColor: Colors.purple,
            ),
        primarySwatch: Colors.purple,
      ),
      home: const Dashboard(),
    );
  }
}
