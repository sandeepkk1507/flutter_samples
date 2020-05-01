import 'package:flutter/material.dart';

import '../album_model.dart';

class ActivatorBloc extends ChangeNotifier {
  int _cellStatus = 0; //0 -> Not selected 1 => 1 cell selected 2 => 2 cells selected
  int _activatorCode = 0;
  int _successFlag = 0;
  List<Album> albumSelectedList = [];
  int get activatorCode => _activatorCode;
  int get cellStatus => _cellStatus;
  int get successFlag => _successFlag;

  set activatorCode(int value) {
    _activatorCode = value;
    notifyListeners();
  }

  updateCode(Album album) {
    activatorCode = activatorCode + 1;
    if(activatorCode == 1) {
      _cellStatus = 1;
      album.gameValue = 1;
      albumSelectedList.add(album);
    }
    else if(activatorCode == 2) {
      _cellStatus = 2;
      album.gameValue = 2;
      albumSelectedList.add(album);
      // if(1 == 1){
      //   _successFlag = 1;
      //   album.opacity = 1;
      // }else{
        _successFlag = 2;
        for (Album ablumItem in albumSelectedList) {
          ablumItem.opacity = 1;
        }

        activatorCode = 0;
        // album.opacity = 2;
      }
    // } else
    // {
    //   albumSelectedList.add(album);
    // }
    for (var album in albumSelectedList) {
      print('The ID  is ${album.id}');
      print('The albumId  is ${album.albumId}');
      print('The url  is ${album.url}');
      print('The thumbnailUrl  is ${album.thumbnailUrl}');
      print('The title  is ${album.title}');
      print('The gameValue  is ${album.gameValue}');
    }
  
  }
}
