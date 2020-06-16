import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'lib/assets/imagens/Logo PDM.png',
              width: 400.0,//Largura
              height: 400.0,//Altura
            ),
            /*Icon(
              Icons.perm_identity,
              size:300,
            ),*/

            TextField(//CAMPO IDENTIFICAÇÃO DO USUÁRIO
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  //borderRadius: BorderRadius.all(
                    //Radius.circular(0.01)
                  //)
                ),
                labelText: "E-mail"
              ),
            ),
            
            SizedBox(height:20),
            TextField(//CAMPO DA SENHA
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.vpn_key),
                border: OutlineInputBorder(
                  //borderRadius: BorderRadius.all(
                   // Radius.zero
                 // )
                ),
                labelText: "Senha"
              ),
              obscureText: true,
            ),

            SizedBox(height:20),
            RaisedButton(//BOTÃO ENTRAR
              child: Text (
                "Entrar", style: TextStyle(fontSize: 18)
              ),
              onPressed: (){
                Navigator.pushNamed(context,
                   "/Tela_Inicio"
                );
              },
            ),
          ]
        ),
      )
    );
  }
}

    
