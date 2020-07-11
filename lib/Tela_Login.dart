import 'package:flutter/material.dart';

final _tLogin = TextEditingController();
final _tSenha = TextEditingController(); 
final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); 

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
              width: 350.0, //Largura
              height: 350.0, //Altura
            ),
            TextField(
              //CAMPO IDENTIFICAÇÃO DO USUÁRIO
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  labelText: "E-mail"),
            ),
            SizedBox(height: 20),
            TextField(
              //CAMPO DA SENHA
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key),
                  border: OutlineInputBorder(),
                  labelText: "Senha"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            RaisedButton(
              //BOTÃO ENTRAR
              child: Text("Entrar", style: TextStyle(fontSize: 18)),
              onPressed: () {
                _onClickLogin(context);
              },
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Novo Usuário? ',
                ),
                InkWell(
                  onTap: () {
                    //CADASTRAR NOVO USUÁRIO
                    Navigator.pushNamed(context, "/Telanovousuario");
                  },
                  child: Text(' Cadastre-se!',
                      style: TextStyle(
                        color: Colors.blueAccent,
                      )),
                )
              ],
            )
          ]),
    ));
  }

  _onClickLogin(BuildContext context) {
    final login = _tLogin.text;
    final senha = _tSenha.text;
    print("Login: $login , Senha: $senha ");
    if (!_formKey.currentState.validate()) {
      return;
    }
    if (login.isEmpty || senha.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Erro"),
            content: Text("Login e/ou Senha inválido(s)"),
            actions: <Widget>[
              FlatButton(
                  child: Text("OK"),
                  onPressed: () {
                    Navigator.pushNamed(context, "/Tela_Inicio");
                  }),
            ],
          );
        },
      );
    }
  }
}
