import 'package:flutter/material.dart';
import 'package:my_samples/bloc/activator_bloc.dart';
import 'package:provider/provider.dart';
import 'services.dart';
import 'grid_cell.dart';
import 'album_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int sindex = 0;
  gridView(AsyncSnapshot<List<Album>> snapshot) {
    return Padding(
      child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: snapshot.data.map((album) {
          return GestureDetector(
            // key: Key(album.id.toString()),
            child: GridTile(
              child: AlbumCell(album),
            ),
            onTap: () {
              cellClick(album);
            },
          );
        }).toList(),
      ),
      padding: EdgeInsets.all(10.0),
    );
  }

  cellClick(Album album) {
    print("Tapped ${album.title}");
  }

  circularProgress() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ActivatorBloc>.value(
        value: ActivatorBloc()
        ),
        ],
        child: MaterialApp(
          title: title,
          home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flexible(
                    child: FutureBuilder<List<Album>>(
                        future: Services.getPhotos(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            return Text('Error ${snapshot.error}');
                          }

                          if (snapshot.hasData) {
                            return gridView(snapshot);
                          }
                          return circularProgress();
                        }))
              ],
            ),
            // body: GridView.count(
            //   // Create a grid with 2 columns. If you change the scrollDirection to
            //   // horizontal, this produces 2 rows.
            //   crossAxisCount: 3,
            //   // Generate 100 widgets that display their index in the List.
            //   children: List<Card>.generate(12, (index) {
            //     return index % 2 == 0
            //         ? Card(
            //             child: FlatButton(
            //               child: Text('Item $index'),
            //               onPressed: null,

            //             ),
            //           )
            //         : Card(
            //             child: Image.network("http://tineye.com/images/widgets/mona.jpg"),
            //           );
            //   }),
            // ),
          ),
        ),
    );
  }
}
