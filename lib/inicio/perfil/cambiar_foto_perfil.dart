import 'package:cath_play/my_widgets/my_body_container.dart';
import 'package:flutter/material.dart';

class CambiarFotoPerfil extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: (const Text("Seleccionar foto de perfil")),),
      body: MyBodyContainer(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for(int i=0; i<15; i++)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  fotoPerfil(),
                  fotoPerfil(),
                  fotoPerfil(),
                ],
              )
          ],
        ),
      ),
    );
  }

  fotoPerfil(){
    return Container(
      height: 110, width: 110,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(100),
      ),
      child: const Center(child: Text("foto de peril")),
    );
  }

}