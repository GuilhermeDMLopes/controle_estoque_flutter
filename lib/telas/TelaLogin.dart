import 'package:controle_estoque_c317_flutter/telas/TelaPrincipal.dart';
import 'package:flutter/material.dart';

class TelaLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         padding: EdgeInsets.only(top:60, left: 40, right: 40),
         color: Colors.white,
         child: ListView(
           children: <Widget>[
             SizedBox(
               width: 128,
               height: 128,
               child: Image.asset("images/logo.png"),
             ),
             SizedBox( // espacamento entre dados na interface
              height: 20,
             ),
             TextFormField(
               keyboardType: TextInputType.emailAddress, // input para email com tipo teclado
               decoration: InputDecoration(
                 labelText: "E-Mail",
                 labelStyle: TextStyle(
                   color: Colors.black38,
                   fontWeight: FontWeight.w400,
                   fontSize: 20
                 ),
               ),
               style: TextStyle(fontSize: 20),
             ),
             SizedBox( // espacamento entre dados na interface
               height: 20,
             ),
             TextFormField(
               keyboardType: TextInputType.text, // input para email com tipo teclado
               obscureText: true, // esconder os dado da senha no campo
               decoration: InputDecoration(
                 labelText: "Senha",
                 labelStyle: TextStyle(
                     color: Colors.black38,
                     fontWeight: FontWeight.w400,
                     fontSize: 20
                 ),
               ),
               style: TextStyle(fontSize: 20),
             ),
             Container(
               height: 40, // o container tem 40 pixels
               alignment: Alignment.centerRight, // alinha apenas na esquerda
               child: TextButton(
                 child: Text(
                     "Recuperar Senha",
                     textAlign: TextAlign.right,
                 ),
                 onPressed: (){},
               ),
             ),
             SizedBox(
               height: 40,
             ),
             Container(
               height: 60,
               alignment: Alignment.centerLeft,
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                   begin: Alignment.topLeft,
                   end: Alignment.bottomRight,
                   stops: [0.3,1], // onde comeca e termina o linear gradiente
                   colors: [
                     Colors.green, // cor inical do degrade
                     Colors.greenAccent, // cor final do degrade
                   ],
                 ),
                 borderRadius: BorderRadius.all(Radius.circular(5)) // dnado uma encurvada no botao
               ),
               child: SizedBox.expand( // pega o tamanho do container todo
                 child: TextButton(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween, // espaco entre os testos
                     children: <Widget>[
                       Text(
                           "Login",
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             color: Colors.white,
                             fontSize: 20 ,
                           ),
                         textAlign: TextAlign.left,
                       ),
                       Container(
                         child: SizedBox(
                           child: Icon(Icons.account_circle),
                           height: 28,
                           width: 28 ,
                         ),
                       )
                     ],
                   ),
                   onPressed: (){
                     Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => TelaPrincipal()));
                   },
                 ),
               ),
             )
           ],
         ),
      ),
    );
  }
}

