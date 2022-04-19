

import 'package:controle_estoque_c317_flutter/Cabecalho.dart';
import 'package:controle_estoque_c317_flutter/telas/TelaCorredor.dart';
import 'package:controle_estoque_c317_flutter/telas/TelaFornecedor.dart';
import 'package:controle_estoque_c317_flutter/telas/TelaHelp.dart';
import 'package:controle_estoque_c317_flutter/telas/TelaProduto.dart';
import 'package:flutter/material.dart';
// 6AB633
class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  void _abrirProduto(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaProduto()));
  }

  void _abrirFornenedor(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaFornecedor()));
  }

  void _abrirCorredor(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaCorredor()));
  }

  void _abrirAjuda(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaHelp()));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: Cabecalho.cabecalho("Controle de estoque",context),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Image(image: AssetImage(""
                  "images/logo.png",

              )),
              Padding(
                padding: EdgeInsets.only(top:32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // alinhar a linha
                  children: <Widget>[
                    GestureDetector(
                      onTap: _abrirProduto , // ao clicar na imagem
                      child: Image.asset(
                        "images/produto.png",
                        width: 140,
                        height: 140,
                      ),
                    ),
                    GestureDetector(
                      onTap: _abrirFornenedor , // ao clicar na imagem
                      child: Image.asset(
                          "images/fornecedor.png",
                           width: 140,
                           height: 140,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // alinhar a linha
                  children: <Widget>[
                    GestureDetector(
                      onTap: _abrirCorredor , // ao clicar na imagem
                      child: Image.asset(
                          "images/corredor.png",
                          width: 140,
                          height: 140,
                      ),
                    ),
                    GestureDetector(
                      onTap: _abrirAjuda , // ao clicar na imagem
                      child: Image.asset(
                          "images/ajuda.png",
                          width: 140,
                          height: 140,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )











      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: <Widget>[
      //     Padding(
      //         padding: EdgeInsets.only(left: 200 , right: 200, top: 80)
      //     ),
      //     Image(image: AssetImage("images/logo.png")),

      //     Row(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Padding(
      //             padding: EdgeInsets.only(left: 70,top: 160)
      //         ),
      //         Image(image: AssetImage("images/menu_cliente.png")),
      //
      //         Padding(
      //             padding: EdgeInsets.only(left: 40, top: 140)
      //         ),
      //         Image(image: AssetImage("images/menu_contato.png")),
      //       ],
      //     )
      //   ],
      // )
    );
  }
}


