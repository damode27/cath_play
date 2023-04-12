import 'package:cath_play/inicio/perfil/cambiar_foto_perfil.dart';
import 'package:cath_play/login.dart';
import 'package:cath_play/my_widgets/my_body_container.dart';
import 'package:cath_play/my_widgets/my_content_text.dart';
import 'package:cath_play/my_widgets/my_gradient_button.dart';
import 'package:cath_play/my_widgets/my_title_text.dart';
import 'package:cath_play/my_widgets/video_box.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: (const Text("Perfil")),),
      body: MyBodyContainer(
        widget: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const MyTitleText(text: "Nombre del Usuario", size: 18),
              const MyContentText(text: "Email del Usuario", size: 16),
              const SizedBox(height: 40,),
              Container(
                height: 200, width: 200,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Center(child: Text("foto de peril")),
              ),
              const SizedBox(height: 40,),
              MyGradientButton(buttonText: "CAMBIAR FOTO DE PERFIL", onPressed: (){
                cambiarFotoPerfil(context);
              }),
              const SizedBox(height: 20,),
              MyGradientButton(buttonText: "CERRAR SESIÓN", onPressed: (){
                cerrarSesion(context);
              })
            ],
          ),
        ),
      ),
    );
  }

  cerrarSesion(BuildContext context){
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login())
    );
  }

  cambiarFotoPerfil(BuildContext context){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CambiarFotoPerfil())
    );
  }

}