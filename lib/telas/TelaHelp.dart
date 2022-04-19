
import 'package:controle_estoque_c317_flutter/Cabecalho.dart';
import 'package:flutter/material.dart';

class TelaHelp extends StatefulWidget {
  const TelaHelp({Key? key}) : super(key: key);

  @override
  State<TelaHelp> createState() => _TelaHelpState();
}

class _TelaHelpState extends State<TelaHelp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Cabecalho.cabecalho("Help",context),
      body: SingleChildScrollView( // para ter a opcao de rolagem no app
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget> [
                  Image.asset("images/detalhe_contato.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                        "Contato",
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
                    "atendimento@atmConsultoria.com.br"
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Text(
                    "Telefone: (35) 99889-9889"
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Text(
                    "Celular: (35) 7878-7878"
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
