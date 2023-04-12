import 'package:cath_play/my_widgets/my_body_container.dart';
import 'package:cath_play/my_widgets/my_gradient_button.dart';
import 'package:flutter/material.dart';
import '../../my_widgets/my_title_text.dart';

class Reproductor extends StatelessWidget{
  final String idVideo, titulo, autor;
  const Reproductor({
    super.key,
    required this.titulo,
    required this.autor,
    required this.idVideo
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: MyBodyContainer(
        widget: Padding(
          padding: const EdgeInsets.fromLTRB(0, 35, 0, 0,),
          child: Column(
            children: [
              Container(
                height: 200, width: 420,
                color: Colors.black26,
                child: Center(child: Icon(Icons.play_arrow_rounded, size: 50, color: Theme.of(context).colorScheme.secondary,)),
              ),
              Container(
                height: 40, width: 420,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.secondaryContainer,
                  ]),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.play_arrow, color: Colors.white,),
                    const SizedBox(width: 10,),
                    Container(
                      height: 3, width: 100,
                      color: Colors.deepPurple,
                    ),
                    Container(
                      height: 3, width: 120,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10,),
                    const Icon(Icons.volume_up, color: Colors.white,),
                    const SizedBox(width: 10,),
                    const Icon(Icons.settings, color: Colors.white,),
                    const SizedBox(width: 10,),
                    const Icon(Icons.fullscreen, color: Colors.white,),
                  ],
                ),
              ),
              const SizedBox(height: 8.0,),
              MyTitleText(
                text: titulo,
                size: 15,
              ),
              const SizedBox(height: 3.0,),
              MyTitleText(
                text: autor,
                size: 13,
              ),
              const SizedBox(height: 8.0,),
              notas(context),
            ],
          ),
        ),
      ),
    );
  }

  notas(BuildContext context){
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 420, width: 420,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          const MyTitleText(text: "Notas", size: 15),
          myNotas(context),
        ],
      ),
    );
  }

  myNotas(BuildContext context){
    return TextField(
      //autofocus: true,
      //controller: controller,
      //enableSuggestions: !isPassword,
      //autocorrect: !isPassword,
      minLines: 1,
      maxLines: 18,
      cursorColor: Theme.of(context).colorScheme.secondary,
      textAlignVertical: TextAlignVertical.center,
      style: const TextStyle(color: Colors.black87),
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        //label: const Text("Escribe tus notas aqui"),
        labelText: "Escribe tus notas aqui",
        //filled: true,
        //fillColor: Colors.white12,
        //contentPadding: const EdgeInsets.only(left: 10, right: 10),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none)
        ),
      ),
    );
  }

}