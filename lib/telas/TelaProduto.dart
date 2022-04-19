
import 'package:controle_estoque_c317_flutter/Cabecalho.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaProduto extends StatefulWidget {
  const TelaProduto({Key? key}) : super(key: key);

  @override
  State<TelaProduto> createState() => _TelaProdutoState();
}

class _TelaProdutoState extends State<TelaProduto> {

  String testo = "gg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Cabecalho.cabecalho("Produto",context),
      body: SingleChildScrollView( // para ter a opcao de rolagem no app
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget> [
                  Image.asset("images/detalhe_empresa.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                        "Sobre a empresa",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange
                        )
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Text(
                    " AAA"
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
