import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});
// estrutura da aplicação
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de click',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Contador1(title: 'Contador de click'),
    );
  }
}
//nomeação
class Contador1 extends StatefulWidget {
  const Contador1({super.key, required this.title});

  final String title;

  @override
  State<Contador1> createState() => _MyHomePageState();
}
//aplicação
class _MyHomePageState extends State<Contador1> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador de clicks na pagina:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                ElevatedButton(
                    onPressed: _incrementCounter,
                    child: const Icon(Icons.add)),

                ElevatedButton (
                    onPressed: _decrementCounter,
                    child: const Icon(Icons.remove)),


              ],
            ),
          ],

        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/
    );
  }
}
