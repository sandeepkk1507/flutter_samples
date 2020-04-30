import 'package:flutter/material.dart';
import '../services.dart';
import 'animated_grid_cell.dart';
// import 'package:my_samples/grid_view/services.dart';

import 'package:my_samples/album_model.dart';
void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';
  static Future<List<Album>> albumList =  Services.getPhotos();
  final Album album = new Album();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Container(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
              for (var i = 0; i < 12; i++) AnimatedGridCell(album,'this is ${i+1}'),
              // AnimatedGridCell('this is one'),
              // AnimatedGridCell('this is two'),
              // AnimatedGridCell('this is three'),
              // AnimatedGridCell('this is four'),
              // AnimatedGridCell('this is five'),
              // AnimatedGridCell('this is six'),
              // AnimatedGridCell('this is seven'),
              // AnimatedGridCell('this is eight'),
              // AnimatedGridCell('this is nine'),
              // AnimatedGridCell('this is ten'),
              // AnimatedGridCell('this is eleven'),
              // AnimatedGridCell('this is tweleve'),

              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('He\'d have you all unravel at the'),
                color: Colors.teal[100],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Heed not the rabble'),
                color: Colors.teal[200],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Sound of screams but the'),
                color: Colors.teal[300],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Who scream'),
                color: Colors.teal[400],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution is coming...'),
                color: Colors.teal[500],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution, they...'),
                color: Colors.teal[600],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
