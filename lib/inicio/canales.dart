import 'package:cath_play/my_widgets/my_content_text.dart';
import 'package:cath_play/my_widgets/my_title_text.dart';
import 'package:cath_play/my_widgets/video_box.dart';
import 'package:flutter/material.dart';

class Canales extends StatefulWidget{
  @override
  State<Canales> createState() => _CanalesState();
}

class _CanalesState extends State<Canales> {
  List<String> items = [
    "Actividad reciente   ",
    "A - Z",
    "Z - A",
  ];

  String value = "Actividad reciente   ";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Center(
        child: Column(
          children: [
            //const MyTitleText(text: "Canales", size: 14.0),
            ordenDropdownButton(context),
            //myDropdownButton(),
            const SizedBox(height: 20,),
            for(int i=0; i<25; i++)
              canalBox(context, i+1),
          ],
        ),
      ),
    );
  }

  myDropdownButton(){
    return DropdownButton(
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      value: value,
      dropdownColor: Theme.of(context).colorScheme.secondary,
      style: const TextStyle(color: Colors.white),
      icon: const Icon(Icons.expand_circle_down_rounded),
      iconEnabledColor: Colors.white,
      onChanged: (newValue){
        setState(() {
          value = newValue!;
        });
      },
    );

  }

  ordenDropdownButton(BuildContext context){
    return Container(
      height: 40.0, width: 220.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Theme.of(context).colorScheme.secondary,
          Theme.of(context).colorScheme.secondaryContainer,
        ]),
        borderRadius: BorderRadius.circular(15),
      ),
      /*
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Actividad reciente", textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),),
          SizedBox(width: 10.0,),
          Icon(Icons.expand_circle_down_rounded, color: Colors.white,)
        ],
      ),

       */
      child: Center(
        child: DropdownButton(
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          value: value,
          underline: const SizedBox(),
          dropdownColor: Theme.of(context).colorScheme.secondary,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
          icon: const Icon(Icons.expand_circle_down_rounded),
          iconEnabledColor: Colors.white,
          onChanged: (newValue){
            setState(() {
              value = newValue!;
            });
          },
        ),
      ),
    );
  }

  canalBox(BuildContext context, int i){
    return Container(
      height: 90.0, width: 420.0,
      margin: const EdgeInsets.only(bottom: 15),
      //padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            height: 70, width: 70,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Center(child: Text("img perfil"),),
          ),
          const SizedBox(width: 15,),
          SizedBox(
            //color: Colors.black,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyTitleText(text: "Nombre del canal del autor $i", size: 18),
                const SizedBox(height: 10,),
                if (i==1)
                  MyTitleText(text: "$i video", size: 14),
                if (i!=1)
                  MyTitleText(text: "$i videos", size: 14),
              ],
            ),
          ),
          const SizedBox(width: 15,),
          Container(
            height: 90, width: 40,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.secondaryContainer,
              ]),
              borderRadius: const BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
            ),
            child: const Center(child: Icon(Icons.chevron_right_rounded, color: Colors.white,),),
          ),
        ],
      ),
    );
  }
}