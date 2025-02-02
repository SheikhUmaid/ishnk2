import 'package:basic_2/components/tile.dart';
import 'package:basic_2/pages/home.dart';
import 'package:basic_2/pages/profile.dart';
import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int currentIndex = 0;

  List _pages = [
    Home(), //0
    Profile(), //1
    Home(), //2
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: _pages[currentIndex],
      floatingActionButton: TextButton(
        onPressed: () {
          debugPrint("Hello World");
        },
        child: Text("Hello"),
      ),
      drawer: Drawer(
        child: SafeArea(child: Text("This is my drawer")),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          //BottomNavigationBarItem(
          //   icon: Icon(Icons.more_time), label: "Profile"),
        ],
        currentIndex: currentIndex, //0
        onTap: (a) {
          currentIndex = a;

          setState(() {});
        },
      ),
    );
  }
}
