
import 'package:controle_estoque_c317_flutter/Cabecalho.dart';
import 'package:flutter/material.dart';

class TelaCorredor extends StatefulWidget {
  const TelaCorredor({Key? key}) : super(key: key);

  @override
  State<TelaCorredor> createState() => _TelaCorredorState();
}

class _TelaCorredorState extends State<TelaCorredor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Cabecalho.cabecalho("Corredor",context),
      body: SingleChildScrollView( // para ter a opcao de rolagem no app
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: <Widget>[
              Row(
                children: <Widget> [
                  Image.asset("images/detalhe_cliente.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                        "Clientes",
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
                child: Image.asset("images/cliente1.png"),
              ),
              Text(
                  "Empresa de software"
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Image.asset("images/cliente2.png"),
              ),
              Text(
                  "Empresa de auditoria"
              )
            ],
          ),
        ),
      ),
    );
  }
}
