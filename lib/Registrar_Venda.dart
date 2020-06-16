import 'package:flutter/material.dart';

class RegistroVenda extends StatefulWidget {
  @override
  _RegistroVendaState createState() => _RegistroVendaState();
}

class _RegistroVendaState extends State<RegistroVenda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(null),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Divider(),
            TextField(//CAMPO DE INSERÇÃO DO PRODUTO
              decoration: InputDecoration(
                border: OutlineInputBorder(
                ),
                labelText: "Produto"
              ),
            ),
            
            SizedBox(height:20),
            TextField(//CAMPO DA QUANTIDADE
              decoration: InputDecoration(
                border: OutlineInputBorder(
                ),
                labelText: "Quantidade"
              ),
              obscureText: true,
            ),


            SizedBox(height:20),
            TextField(//CAMPO VALOR DE VENDA DO PRODUTO
              decoration: InputDecoration(
                border: OutlineInputBorder(
                ),
                labelText: "Valor Venda"
              ),
              obscureText: true,
            ),

            SizedBox(height:20),
            TextField(//CAMPO APLICAR DESCONTO
              decoration: InputDecoration(
                border: OutlineInputBorder(
                ),
                labelText: "Aplicar desconto?"
              ),
              obscureText: true,
            ),

            SizedBox(height:20),
            TextField(//CAMPO NOME DO CLIENTE
              decoration: InputDecoration(
                border: OutlineInputBorder(
                ),
                labelText: "Cliente"
              ),
              obscureText: true,
            ),

            SizedBox(height:20),
            RaisedButton(//BOTÃO SALVAR
              child: Text (
                "Salvar", style: TextStyle(fontSize: 18)
              ),
              onPressed: (){
                Navigator.pushNamed(context,
                   "/BotaoEstoque"
                );
              },
            ),
          ]
        ),
      ),
    );
    }
}
