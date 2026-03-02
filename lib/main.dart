import 'questionario.dart';
import '/resultado.dart';
import 'package:flutter/material.dart';


void main(){
 runApp(PerguntaApp());

}

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;
  var _pontucaoTotal = 0;
  final _perguntas = const[
    {
      'texto': "Qual é a sua cor favorita?",
      'respostas':[
        {'texto': 'Preto', 'pontuacao': 10}, 
        {'texto': 'Vermelho', 'pontuacao': 5}, 
        {'texto': 'Verde', 'pontuacao': 3}, 
        {'texto': 'Branco', 'pontuacao': 1},
        ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 10}, 
        {'texto': 'Cobra', 'pontuacao': 5},
        {'texto': 'Elefante', 'pontuacao': 3}, 
        {'texto': 'Leão', 'pontuacao': 1},
        ]
    },  
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': [
        {'texto': 'Leo', 'pontuacao': 10},
        {'texto': 'Maria', 'pontuacao': 5}, 
        {'texto': 'João', 'pontuacao': 3}, 
        {'texto': 'Pedro', 'pontuacao': 1},
        ]
    }
    ];


  void _responder(int pontuacao){
    if(temPerguntaSelecionada){
      setState(() {
       _perguntaSelecionada++;
       _pontucaoTotal += pontuacao;
    });
    }
  }

  void _reiniciarQuestionario(){
    setState(() {
      _perguntaSelecionada = 0;
      _pontucaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada 
        ? Questionario(
          perguntas: _perguntas, perguntaSelecionada: 
          _perguntaSelecionada, responder: _responder) 
        : Resultado(_pontucaoTotal, _reiniciarQuestionario)
        ),
    );
  }

}


class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});
  
  @override
  // ignore: library_private_types_in_public_api
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}