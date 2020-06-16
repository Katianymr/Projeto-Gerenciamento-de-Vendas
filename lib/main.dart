import 'package:flutter/material.dart';
import 'package:projeto_gerenciamento_vendas/Cadastrar_Produtos.dart';
import 'package:projeto_gerenciamento_vendas/Registrar_Venda.dart';
import 'package:projeto_gerenciamento_vendas/Tela_Inicio.dart';
import 'package:projeto_gerenciamento_vendas/Tela_Sobre.dart';
import 'Tela_Login.dart';
import 'Estoque.dart';
import 'Registrar_Venda.dart';
import 'Cadastrar_Produtos.dart';
import 'Cadastrar_Cliente.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Gerenciamento de Vendas",
    initialRoute: "/Tela_Login",
    routes: {
      "/Tela_Login": (context) => Login(),
      "/Tela_Inicio": (context) => TelaInicio(),
      "/BotaoSobre": (context) => Sobre(),
      "/BotaoEstoque": (context) => Estoque(),
      "/BotaoRegistroVenda": (context) => RegistroVenda(),
      "/BotaoCadastroProduto": (context) => CadastroProduto(),
      "/BotaoCadastroCliente": (context) => CadastroCliente(),
    },
  ));
}

