import 'package:cath_play/my_widgets/my_body_container.dart';
import 'package:cath_play/my_widgets/my_content_text.dart';
import 'package:cath_play/my_widgets/my_gradient_button.dart';
import 'package:cath_play/my_widgets/my_title_text.dart';
import 'package:cath_play/my_widgets/video_box.dart';
import 'package:flutter/material.dart';

class Estadisticas extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Center(
        child: Column(
          children: [
            const MyTitleText(text: "Mis Estadísticas", size: 18.0),
            const SizedBox(height: 20,),
            myEstadistica(context, "Días de racha", "días", 7, 243),
            const SizedBox(height: 20,),
            myEstadistica(context, "Videos vistos", "videos", 25, 104),
            const SizedBox(height: 20,),
            myEstadistica(context, "Minutos vistos", "minutos", 426, 180),
          ],
        ),
      ),
    );
  }

  myEstadistica(BuildContext context, String titulo, unidad, int total, ranking){
    return Container(
      height: 150, width: 400,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          MyTitleText(text: titulo, size: 16.0),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100, width: 150,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Total", style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.secondary,),),
                    MyTitleText(text: total.toString(), size: 40),
                    Text(unidad, style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.secondary,),),
                  ],
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                height: 100, width: 150,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(colors: [
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.secondaryContainer,
                  ]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Puesto", style: TextStyle(fontSize: 14, color: Colors.white),),
                    Text(ranking.toString(), style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
                    const Text("en ranking", style: TextStyle(fontSize: 14, color: Colors.white),),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}