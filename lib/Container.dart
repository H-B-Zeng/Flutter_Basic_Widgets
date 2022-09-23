import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Container example"),
          leading: Icon(FontAwesomeIcons.dragon),
        ),
        body: Container(
          transform: Matrix4.rotationZ(0.1),
          color: Colors.tealAccent,
          padding: const EdgeInsets.all(50.0),
          child: Container(
            transform: Matrix4.rotationZ(-0.2),
            constraints: const BoxConstraints.expand(),
            color: Colors.deepOrange,
            child: const Center(child: Text('Flutter Container Child', style: TextStyle(fontSize: 60.0),)),
          ),
        )
    );
  }
}