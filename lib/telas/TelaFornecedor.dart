
import 'package:controle_estoque_c317_flutter/Cabecalho.dart';
import 'package:flutter/material.dart';

class TelaFornecedor extends StatefulWidget {
  const TelaFornecedor({Key? key}) : super(key: key);

  @override
  State<TelaFornecedor> createState() => _TelaFornecedorState();
}

class _TelaFornecedorState extends State<TelaFornecedor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:Cabecalho.cabecalho("Fornecedor",context),
      body: SingleChildScrollView( // para ter a opcao de rolagem no app
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: <Widget>[
              Row(
                children: <Widget> [
                  Image.asset("images/detalhe_servico.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                        "Nossos Servicos",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black
                        )
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Text(
                    "Consultoria"
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Text(
                    "Calculo de precos"
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Text(
                    "Acompanhamento de Projetos"
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
