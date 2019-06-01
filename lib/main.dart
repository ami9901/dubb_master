import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      // Title
      title: "Using Tabs",
      // Home
      home: new MyHome()));
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => new MyHomeState();
}

// SingleTickerProviderStateMixin is used for animation
class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // Appbar
      appBar: new AppBar(
        // Title
        title: new Text("Audio Converter"),
        centerTitle: true,
        // Set the background color of the App Bar
        backgroundColor: Colors.cyan,
      ),
      // Set the TabBar view as the body of the Scaffold
      body: BottomBarNavigationPatternExample(),
    );
  }
}
