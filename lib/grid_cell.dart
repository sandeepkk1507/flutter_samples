import 'package:flutter/material.dart';
import 'package:my_samples/bloc/activator_bloc.dart';
import 'package:provider/provider.dart';
import 'album_model.dart';

class AlbumCell extends StatelessWidget {
  const AlbumCell(this.album, this.index);
  @required
  final Album album;
  final int index;
  @override
  Widget build(BuildContext context) {
    final ActivatorBloc activatorBloc = Provider.of<ActivatorBloc>(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          // color: activatorBloc.cellStatus == 2 && this.index == index ? Colors.green : activatorBloc.cellStatus == 1 ? Colors.yellow : activatorBloc.cellStatus == 0 ? Colors.white : Colors.white,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                child: GestureDetector(
                  child: Opacity(
                    opacity: album.opacity == 1 ? 0.0 : 1.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        // borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(
                            width: 4,
                            color: album.gameValue == 2
                                ? Colors.green
                                : album.gameValue == 1
                                    ? Colors.yellow
                                    : Colors.white),
                      ),
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
                    ),
                  ),
                  onTap: () {
                    activatorBloc.updateCode(album);
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
