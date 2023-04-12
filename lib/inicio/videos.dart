import 'package:cath_play/my_widgets/my_title_text.dart';
import 'package:cath_play/my_widgets/video_box.dart';
import 'package:flutter/material.dart';

class Videos extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          for(int i=0; i<25; i++)
            VideoBox(
              titulo: "Nombre del Titulo ${i+1}",
              autor: "Nombre del Autor ${i+1}",
              idVideo: "video ${i+1}",
            ),
        ],
      ),
    );
  }

}