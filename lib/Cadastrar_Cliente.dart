import 'package:flutter/material.dart';

class CadastroCliente extends StatefulWidget {
  @override
  _CadastroClienteState createState() => _CadastroClienteState();
}

class _CadastroClienteState extends State<CadastroCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(null),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Divider(),
            TextField(
              //NOME DO CLIENTE
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Cliente"),
            ),
            SizedBox(height: 20),
            TextField(
              //CAMPO PARA TELEFONE
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Telefone"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            TextField(
              //CAMPO PARA ENDEREÇO
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Endereço"),
            ),
            SizedBox(height: 20),
            RaisedButton(
              //BOTÃO SALVAR
              child: Text("Salvar", style: TextStyle(fontSize: 18)),
              onPressed: () {
                Navigator.pushNamed(context, "/BotaoCadastroCliente");
              },
            ),
          ],
        ),
      ),
    );
  }
}
