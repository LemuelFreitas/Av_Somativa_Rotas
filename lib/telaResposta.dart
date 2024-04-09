import 'package:flutter/material.dart';

import 'tela1.dart';
//nomeação
class Resposta extends StatefulWidget {
  const Resposta({super.key});

  @override
  State<Resposta> createState() => _HomePageState();
}
//estrutura da aplicação
class _HomePageState extends State<Resposta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Resposta"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Icon(
                Icons.adb,
                size: 120.0,
                color: Colors.blue,
              ),
              Text(
                "TELA DE RESPOSTA",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
              ),
              Text(
                "",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
              ),



            ]),

      ),
    );

  }
}
