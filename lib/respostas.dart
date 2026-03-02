import 'package:flutter/material.dart';


class Resposta extends StatelessWidget {
  final String textoResposta;
  final void Function() onSelecao;

  // ignore: prefer_const_constructors_in_immutables
  Resposta(this.textoResposta, this.onSelecao, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(1),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero
          ),
        ),
        onPressed: onSelecao,
        child: Text(textoResposta)
        ),
    );
  }
}