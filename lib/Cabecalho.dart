
import 'package:controle_estoque_c317_flutter/telas/TelaLogin.dart';
import 'package:controle_estoque_c317_flutter/telas/TelaPrincipal.dart';
import 'package:flutter/material.dart';

class Cabecalho{

  static AppBar cabecalho(String testo, BuildContext context){

    return AppBar(
      backgroundColor: Colors.green,
      centerTitle: true,
      title: Text(testo),
      leading: IconButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaPrincipal()));
        },
        icon: Icon(Icons.home),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notification_add),
        ),
        IconButton(
          icon: Icon(Icons.logout_sharp),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Deseja mesmo Deslogar?"),
                    actions: <Widget>[
                      TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("Nao")
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TelaLogin()));
                          },
                          child: Text("Sim")
                      )
                    ],
                  );
                }
            );
          }
        ),
      ]
    );
  }
}