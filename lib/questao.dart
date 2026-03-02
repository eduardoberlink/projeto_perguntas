import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;
  // ignore: prefer_const_constructors_in_immutables
  Questao(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto, 
        style: TextStyle(fontSize: 26),
        textAlign: TextAlign.center,
        ),
    );
  }
}
