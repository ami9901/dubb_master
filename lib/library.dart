import 'package:audio_converter/video_player.dart';
import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.extent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGridTiles(29, context),
      ),
    );
  }

  List<Widget> _buildGridTiles(numberOfTiles, context) {
    List<Container> containers =
        new List<Container>.generate(numberOfTiles, (int index) {
      //index = 0, 1, 2,...
      final imageName = index < 9
          ? 'images/image0${index + 1}.JPG'
          : 'images/image${index + 1}.JPG';
      return Container(
        child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => VideoPage()));
            },
            child: Image.asset(imageName, fit: BoxFit.fill)),
      );
    });
    return containers;
  }
}
