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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _selectedIndex = 0;
  static const List<Widget> _widgetOption = <Widget>[
    Icon(Icons.star, size: 200.0,),
    Icon(Icons.mood_bad, size: 200.0,),
    Icon(Icons.wb_sunny, size: 200.0,),
  ];
  void _onItemTap(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Scaffold examp le"),
          leading: const Icon(FontAwesomeIcons.dragon),
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
         icon: Icon(Icons.star), label: 'Star'),
          BottomNavigationBarItem(
              icon: Icon(Icons.mood_bad), label: 'Sad'),
          BottomNavigationBarItem(
              icon: Icon(Icons.wb_sunny), label: 'Sunny'),
        ],
          onTap: _onItemTap,
          currentIndex: _selectedIndex,),
        body: Center(child: _widgetOption.elementAt(_selectedIndex),));
  }
}

