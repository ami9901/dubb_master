import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  _searchBar() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(36.0),
          child: new TextFormField(
            decoration: new InputDecoration(
              labelText: "Enter URL",
              fillColor: Colors.white,
              border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(25.0),
                borderSide: new BorderSide(),
              ),
              //fillColor: Colors.green
            ),
            keyboardType: TextInputType.url,
            style: new TextStyle(
              fontFamily: "Poppins",
            ),
          ),
        ),
        new RaisedButton(
            child: new Text(
              "Submit",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            onPressed: () {},
            color: Colors.red)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _searchBar(),
    );
  }
}
