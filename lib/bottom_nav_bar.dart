import 'package:audio_converter/upload.dart';
import 'package:flutter/material.dart';
import 'package:audio_converter/animated_bottom_bar.dart';

import 'library.dart';

class BottomBarNavigationPatternExample extends StatefulWidget {
  final List<BarItem> barItems = [
    BarItem(
      text: "Home",
      iconData: Icons.home,
      color: Colors.indigo,
    ),
    BarItem(
      text: "Upload",
      iconData: Icons.cloud_upload,
      color: Colors.yellow.shade900,
    ),
    BarItem(
      text: "Files",
      iconData: Icons.library_books,
      color: Colors.teal,
    ),
  ];

  @override
  _BottomBarNavigationPatternExampleState createState() =>
      _BottomBarNavigationPatternExampleState();
}

class _BottomBarNavigationPatternExampleState
    extends State<BottomBarNavigationPatternExample> {
  int selectedBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        child: select(selectedBarIndex),
        //color: widget.barItems[selectedBarIndex].color,
        duration: const Duration(milliseconds: 300),
      ),
      bottomNavigationBar: AnimatedBottomBar(
          barItems: widget.barItems,
          animationDuration: const Duration(milliseconds: 150),
          barStyle: BarStyle(fontSize: 20.0, iconSize: 30.0),
          onBarTap: (index) {
            setState(() {
              selectedBarIndex = index;
            });
          }),
    );
  }

  Widget select(int i) {
    switch (i) {
      case 1:
        return Upload();
      case 2:
        return Library();
    }

    return Container();
  }
}
