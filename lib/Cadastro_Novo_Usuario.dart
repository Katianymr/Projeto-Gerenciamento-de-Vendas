import 'package:flutter/material.dart';

class CadastroNovoUsuario extends StatefulWidget {
  @override
  _CadastroNovoUsuarioState createState() => _CadastroNovoUsuarioState();
}

class _CadastroNovoUsuarioState extends State<CadastroNovoUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar novo Usuário"),
        elevation: 0,
      ),
      body: Column(children: <Widget>[
        Icon(
          Icons.perm_identity,
          size: 150,
        ),
        TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.person), labelText: 'Nome: '),
        ), //Descrição
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: TextField(
            //CONFIRMAÇÃO DA SENHA
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.people), labelText: 'E-mail: '),
          ),
        ),
        Padding(
          //SENHA
          padding: const EdgeInsets.only(top: 16.0),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.vpn_key), labelText: 'Senha: '),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: TextField(
            //CONFIRMAÇÃO DA SENHA
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.vpn_key), labelText: 'Repetir Senha: '),
          ),
        ),

        Divider(),

        RaisedButton(
            child: Text('Cadastrar'),
            onPressed: () {
              Navigator.pushNamed(context, "/Emconstrucao");
            }),
      ]),
    );
  }
}
