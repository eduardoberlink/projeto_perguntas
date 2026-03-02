import 'package:flutter/material.dart';
import '/respostas.dart';
import './questao.dart';


// ignore: must_be_immutable
class Questionario extends StatelessWidget {

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;
 
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  bool get temPerguntaSelecionada{
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada 
    ? perguntas[perguntaSelecionada].cast()['respostas']
    as List<Map<String, Object>>
    : [];
    return Column(
          children: <Widget>[
            Questao(perguntas[perguntaSelecionada]['texto'].toString()),
            ...respostas.map((resp) => Resposta(resp['texto'].toString(),
            () => 
            responder(int.parse(resp['pontuacao'].toString()))
            )),
          ],
        );
  }
}