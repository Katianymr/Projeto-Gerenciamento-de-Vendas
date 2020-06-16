import 'package:flutter/material.dart';

class TelaInicio extends StatefulWidget {
  @override
  _TelaInicioState createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(""),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height:60),
            SizedBox(
                height:50,
                width:200,
              child: 
            RaisedButton.icon(//BOTÃO ESTOQUE
              
              icon: Icon(Icons.insert_chart),
              label: Text (
                "Estoque", style: TextStyle(fontSize: 18)
              ),
              onPressed: (){
                Navigator.pushNamed(context,
                  "/BotaoEstoque",
                );
              }
            ),
            ),

            SizedBox(height:40),
            SizedBox(
                height:50,
                width:200,
              child: RaisedButton.icon(//BOTÃO REGISTRAR VENDA
              icon: Icon(Icons.add_shopping_cart),
              label: Text (
                "Registrar Venda", style: TextStyle(fontSize: 18)
              ),
              onPressed: (){
                Navigator.pushNamed(context,
                  "/BotaoRegistroVenda"
                );
              }
            ),
            ),

            SizedBox(height:40),
            SizedBox(
                height:50,
                width:200,
              child: RaisedButton.icon(//BOTÃO CADASTRAR CLIENTE
              icon: Icon(Icons.contacts),
              label: Text (
                "Cadastrar Cliente", style: TextStyle(fontSize: 18)
              ),
              onPressed: (){
                Navigator.pushNamed(context,
                  "/BotaoCadastroCliente"
                );
              }
           ),
            ),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.help_outline,),
        onPressed: (){
          Navigator.pushNamed(context,
            "/BotaoSobre"
          );
        }
      ),
    );
  }
}

