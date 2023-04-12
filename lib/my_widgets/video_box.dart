import 'package:cath_play/inicio/videos/reproductor.dart';
import 'package:flutter/material.dart';

import 'my_title_text.dart';

class VideoBox extends StatelessWidget{
  final String idVideo, titulo, autor;
  const VideoBox({
    super.key,
    required this.titulo,
    required this.autor,
    required this.idVideo
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Reproductor(titulo: titulo, autor: autor, idVideo: idVideo))
        );
      },
      child: Container(
        height: 250, width: 450,
        color: Colors.black12,
        margin: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          children: [
            SizedBox(
              height: 200, width: 420,
              child: Center(child: Text(idVideo)),
            ),
            Container(
                height: 50, width: 420,
                color: Colors.black12,
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    MyTitleText(
                      text: titulo,
                      size: 15,
                    ),
                    const SizedBox(height: 3.0,),
                    MyTitleText(
                      text: autor,
                      size: 13,
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }

}