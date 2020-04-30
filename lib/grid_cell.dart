import 'package:flutter/material.dart';
import 'package:my_samples/bloc/activator_bloc.dart';
import 'package:provider/provider.dart';
import 'album_model.dart';

class AlbumCell extends StatelessWidget {
  const AlbumCell(this.album);
  @required
  final Album album;
  @override
  Widget build(BuildContext context) {
    final ActivatorBloc activatorBloc = Provider.of<ActivatorBloc>(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: activatorBloc.activatorCode == 0 ? Colors.white : Colors.blue,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                child: GestureDetector(
                  child: ClipRRect(
                    // key: Key(album.id.toString()),
                    borderRadius: BorderRadius.circular(10.0),
                    child: FadeInImage.assetNetwork(
                      placeholder: "images/no_image.png",
                      image: album.thumbnailUrl,
                      width: 200,
                      height: 200,
                    ),
                  ),
                  onTap: () {

                  },
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.all(10.0),
              //   child: Text(
              //     activatorBloc.activatorCode.toString(),
              //     maxLines: 1,
              //     softWrap: true,
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //       fontSize: 20.0,
              //       fontWeight: FontWeight.w500,
              //     ),)
              //   ,)
            ],
          ),
        ),
      ),
    );
  }
}
