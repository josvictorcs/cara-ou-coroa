import 'dart:math';

import 'package:cara_ou_coroa/resultado.dart';
import 'package:flutter/material.dart';

class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}

class _principalState extends State<principal> {
  void _exibirResultado() { 
    //Chama a próxima tela e envia a ela uma String com o valor que qual imagen sera exíbida
    var _itens = ["cara", "coroa"]; //lista de opções de resultado disponíveis
    int number = Random().nextInt(_itens.length); //Randomico
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Resultado(_itens[number]))); //Chama a próxima tela
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffc3d03),
      body: Container(
        child: Column(
          //Alinhamentos de widgets
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logo.png"), //Logo do app
            Padding(
              padding: EdgeInsets.only(top: 32),
              //Detecção de toque
              child: GestureDetector( 
                onTap: _exibirResultado,
                child: Image.asset("assets/btn_jogar.png"), //Botão
              ),
            )
          ],
        ),
      ),
    );
  }
}
