import 'package:flutter/material.dart';

class CadastroProduto extends StatefulWidget {
  @override
  _CadastroProdutoState createState() => _CadastroProdutoState();
}

class _CadastroProdutoState extends State<CadastroProduto> {
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
            TextField(//CAMPO PRODUTO
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
            TextField(//CAMPO DESCRIÇÃO DO PRODUTO
              decoration: InputDecoration(
                border: OutlineInputBorder(
                ),
                labelText: "Descrição do Produto"
              ),
            ),

            SizedBox(height:20),
            TextField(//CAMPO VALOR PAGO NO PRODUTO
              decoration: InputDecoration(
                border: OutlineInputBorder(
                ),
                labelText: "Valor Compra"
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
            RaisedButton(//BOTÃO SALVAR
              child: Text (
                "Salvar", style: TextStyle(fontSize: 18)
              ),
              onPressed: (){
                Navigator.pushNamed(context,
                  "/BotaoCadastroProduto"
                );
              },
            ),
          ]
        )
      ),
    );
  }
}
