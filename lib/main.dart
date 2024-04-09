import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}
//nomeação
class MyApp extends StatelessWidget {
  const MyApp({super.key});
//execução e inicialização do Home
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}