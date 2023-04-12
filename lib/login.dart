import 'dart:io';
import 'package:cath_play/my_widgets/my_body_container.dart';
import 'package:cath_play/my_widgets/my_content_text.dart';
import 'package:cath_play/my_widgets/my_gradient_button.dart';
import 'package:cath_play/my_widgets/my_text_form_field.dart';
import 'package:cath_play/my_widgets/my_title_text.dart';
import 'package:flutter/material.dart';

import 'inicio.dart';
import 'my_widgets/my_widgets.dart';

class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: MyBodyContainer(
        widget: Padding(
          padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).size.height * 0.2, 20, 0,
          ),
          child: Column(
            children: [
              const MyTitleText(text: "Bienvenido(a) a", size: 24),
              const SizedBox(height: 5,),
              const MyTitleText(text: "Cath Play", size: 40),
              const SizedBox(height: 30,),
              Container(
                height: 300, width: 300,
                color: Colors.black12,
                child: const Center(child: Text("logo")),
              ),
              const SizedBox(height: 50,),

              MyGradientButton(buttonText: "ENTRAR CON GOOGLE", onPressed: (){
                googleLogin();
              }),

              const SizedBox(height: 40.0,),

            ],
          ),
        ),
      ),
    );
  }

  googleLogin (){
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Inicio())
    );
  }

}
