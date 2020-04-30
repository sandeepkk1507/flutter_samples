import 'package:flutter/material.dart';
import 'package:my_samples/album_model.dart';

class AnimatedGridCell extends StatelessWidget {
  final String text;
  final Album album;
  AnimatedGridCell(this.album,this.text);

  final bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // setState(() {
        //   selected = !selected;
        // });
        print("The iteam is "+text);
      },
      child: Center(
        child: AnimatedContainer(
          width: selected? 120.0 : 100.0,
          height: selected? 120.0 : 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            // backgroundBlendMode: BlendMode.colorDodge,
            color: selected ? Colors.red : Colors.teal[400],
          ),
          alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: Duration(seconds: 2),
          curve: Curves.elasticInOut,
          child: Image.network(album.thumbnailUrl),
        ),
      ),
    );
  }
}