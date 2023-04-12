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
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _userTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: const Text("Hola mundo"),),
      body: MyBodyContainer(
        widget: Padding(
          padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).size.height * 0.2, 20, 0,
          ),
          child: Column(
            children: [
              //logoWidget("assets/images/logo.png", 300),
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

              /*
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      MyTextFormField(labelText: "Email", icon: Icons.mail, controller: _userTextController, isPassword: false),
                      const SizedBox(height: 20,),
                      MyTextFormField(labelText: "Contraseña", icon: Icons.lock, controller: _passwordTextController, isPassword: true),
                      const SizedBox(height: 20,),
                      MyGradientButton(buttonText: "ENTRAR", onPressed: (){
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          //iniciarSesion(context);
                        }
                      }),
                      const SizedBox(height: 40,),
                      const MyContentText(text: "¿No tienes una cuenta? Crea una aqui:", size: 14),
                      const SizedBox(height: 5,),
                      MyGradientButton(buttonText: "REGISTRARME", onPressed: (){}),
                    ],
                  ),
                ),

                 */

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