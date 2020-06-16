import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: null),
      body: Column(
        children: <Widget>[
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('lib/assets/imagens/Katiany.jpg',
              width: 160.0,//Largura
              ),
            ]
          ),
          
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Olá!! \n\n"
                "Meu nome é Katiany, e sou estudante de programação de sistemas na \n"
                "FATEC Ribeirão Preto. \n"
                "Este aplicativo foi desenvolvido para auxiliar microempreendedores no \n"
                "gerenciamento de suas vendas."
              ),
            ]
          ),
        ],
      ),
    );
  }
}