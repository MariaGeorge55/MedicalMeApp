import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Row1 = Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Container(
                width: 385.1,
                height: 250.2,
                decoration: BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("images/Avatar 3.png"),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(34.0),
                    bottomLeft: Radius.circular(34.0),
                  ),
                  color: const Color(0xffe0ecde),
                ),
                padding: new EdgeInsets.only(top: 30),
                child: Text(
                  'Good evening hamada',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ))),
        Padding(padding: EdgeInsets.only(top: 50.0)),
      ],
    );
    var Row2 = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(image: AssetImage('images/Icons- brain.png')),
        Padding(padding: EdgeInsets.only(right: 7.0)),
        Text(
          'Reminders',
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
      ],
    );
    var Row3 = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(padding: EdgeInsets.only(top: 5.0)),
        Image(image: AssetImage('images/Icons- path.png')),
        Padding(padding: EdgeInsets.only(right: 7.0)),
        Text(
          'Journals',
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
      ],
    );
    var Row4 = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(padding: EdgeInsets.only(top: 5.0)),
        Image(image: AssetImage('images/Icons- lab.png')),
        Padding(padding: EdgeInsets.only(right: 7.0)),
        Text(
          'Analysis',
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
      ],
    );
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(child: Image(image: AssetImage('images/Icon.png'))),
          ),
          body: Center(
              child: Container(
            child: ListView(
                children: ListTile.divideTiles(
              context: context,
              tiles: [
                ListTile(
                  title: Row1,
                ),
                Divider(),
                ListTile(
                  title: Row2,
                ),
                ListTile(
                  title: Row3,
                ),
                Divider(),
                ListTile(
                  title: Row4,
                ),
                Divider(),
              ],
            ).toList()),
          ))),
    );
  }
}
