import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Resultado extends StatefulWidget {
 //Construtor para receber o dado da outra tela
  String valor;
  Resultado(this.valor);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    var caminho; // usada para armazenar o caminho da imagem
    //Verifica qual o dado passado pela outra tela
    if (widget.valor == "cara") {
      caminho = "assets/cara.png";
    } else {
      caminho = "assets/coroa.png";
    }

    return Scaffold(
      backgroundColor: const Color(0xfffc3d03),
      body: Container(
        child: Column(
          //Alinhamento
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(caminho), //Resultado da jogada
            Padding(
              padding: EdgeInsets.only(top: 32),
              //detecção do toque
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context); // fecha a nova tela
                },
                child: Image.asset("assets/btn_voltar.png"), 
              ),
            )
          ],
        ),
      ),
    );
  }
}
