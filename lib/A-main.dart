import 'dart:async';
import 'package:flutter/material.dart';
import 'B-secondscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Laza',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 13, 6, 23)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Laza'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyWidget()))
         );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     backgroundColor:Color(0xFF1B262C),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.network("https://i.postimg.cc/1tn56bmc/Logo-1.png"),
            ],
          ),
        ),
      ),

    );
  }
}
