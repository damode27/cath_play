import 'package:cath_play/my_widgets/my_body_container.dart';
import 'package:cath_play/my_widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';

import '../my_widgets/my_title_text.dart';
import '../my_widgets/video_box.dart';

class Buscar extends StatelessWidget{
  final TextEditingController _buscarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: myAppBar(context),
      body: const MyBodyContainer(widget: Text(""),),
      /*
      body: MyBodyContainer(
        widget: Center(
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
        ),
      ),

       */
    );
  }

  myAppBar(BuildContext context){
    return AppBar(
      title: MyTextFormField(labelText: "Buscar en Cat Play", controller: _buscarController, isPassword: false),
      //title: const MyTitleText(text: "Cath Play", size: 18,),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.send, color: Theme.of(context).colorScheme.secondary,),
        ),
      ],
    );
  }

}