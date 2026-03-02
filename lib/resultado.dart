import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;
 // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Resultado(
    this.pontuacao,
    this.reiniciarQuestionario
    );
  


  String get fraseResultado{
    if(pontuacao < 8){
      return 'Parabéns!';
    }else if (pontuacao < 12){
      return 'Você é bom!';
    }else if(pontuacao < 16){
      return 'Impressionante!';
    }else{
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
              fraseResultado,
              style: TextStyle(
              fontSize: 30,
          ),
              textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          onPressed: reiniciarQuestionario,
          // ignore: sort_child_properties_last
          child: Text('Reiniciar',
          style: TextStyle(
            fontSize: 18
          ),
          ),
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
          
        )
      ] 
      );
  }
}