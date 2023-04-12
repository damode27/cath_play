import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color colorAzul = const Color(0xFF22CFCD);

Image logoWidget(String nombreImg, double width){
  return Image.asset(
    nombreImg,
    fit: BoxFit.fitWidth,
    width: width, //height: 140,
    //color: Colors.white,
  );
}

TextFormField myTextFormField(String texto, IconData icono, bool isPassword, TextEditingController controller){
  return TextFormField(
    controller: controller,
    obscureText: isPassword,
    enableSuggestions: !isPassword,
    autocorrect: !isPassword,
    cursorColor: colorAzul,
    style: TextStyle(color: colorAzul),
    decoration: InputDecoration(
        prefixIcon: Icon(
          icono,
          color: colorAzul,
        ),
        labelText: texto,
        labelStyle: TextStyle(color: colorAzul),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.black26,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none)
        ),
        errorStyle: const TextStyle(color: Color(0xFFFFB400))
    ),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Introduce este dato porfavor';
      }
      return null;
    },
    keyboardType: isPassword
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

Container myButton(BuildContext context, String texto, Function onTap){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50.0,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: (){
        onTap();
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.all(12),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.black.withOpacity(0.04);
            } else if (states.contains(MaterialState.focused)) {
              return Colors.black.withOpacity(0.12);
            } else if (states.contains(MaterialState.pressed)) {
              return Colors.black.withOpacity(0.16);
            }
            return Colors.transparent;
          },
        ),
      ),
      child: Text(
        texto,
        style: const TextStyle(
          color: Color(0xFF2F455C),
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}



Text myTitleText(String texto, double size){
  return Text(
    texto,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: colorAzul,
      fontWeight: FontWeight.bold,
      fontSize: size,
    ),
  );
}

Text myContentText(String texto, double size){
  return Text(
    texto,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: colorAzul,
      fontSize: size,
    ),
  );
}

