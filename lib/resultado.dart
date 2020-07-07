import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() _quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this._quandoReiniciarQuestionario);

  String get fraseResultado {
    String pontos = "${this.pontuacao} pontos\n";
    if (pontuacao < 8) {
      return "${pontos} \nParabéns!";
    } else if (pontuacao < 12) {
      return "${pontos} \nVocê é bom!";
    } else if (pontuacao < 16) {
      return "${pontos} \nImpressionante!";
    } else {
      return "${pontos} \nNível Jedi!";
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
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          child: Text(
            "Reiniciar?",
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.blue,
          onPressed: _quandoReiniciarQuestionario,
        )
      ],
    );
  }
}
