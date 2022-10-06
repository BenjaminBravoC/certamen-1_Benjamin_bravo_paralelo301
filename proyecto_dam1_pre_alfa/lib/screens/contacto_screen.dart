//import 'dart:html';

import 'package:flutter/material.dart';

class ContactoScreen extends StatefulWidget {
  const ContactoScreen({Key? key}) : super(key: key);

  @override
  State<ContactoScreen> createState() => _ContactoScreenState();
}

class _ContactoScreenState extends State<ContactoScreen> {
  //Datetime date = DateTime(2022, 12, 24);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Correo',
              hintText: 'Ingrese su correo',
            ),
          ),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Personaje',
              hintText: 'Introduzca nombre del personaje',
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Nivel',
              hintText: 'Introduzca nivel del personaje',
            ),
          ),
          OutlinedButton(
            child: Text('Enviar'),
            onPressed:(){},
          ),
        ],
      ),
    );
  }
}