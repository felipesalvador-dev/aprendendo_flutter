import 'package:flutter/material.dart'

class WidgetsConteudo extends StatelessWidget{
    const WidgetsConteudo({super.key});

    @override
    Widget build(BuildContext context){
        return Scaffold(
        appBar: AppBar(title: Text('Widgets de Conteúdo')),
       
          body: ListView(
          padding: EdgeInsets.all (20),
          children: [
            TituloSecao(titulo: 'Corinthians'),
            Text(
              'São Paulo',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 0, 0),
              ),
            ),
            Text(
              'Palmeiras',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 16, 230, 23),
              ),
            ),

            Divider(),
            TituloSecao(titulo: 'Imagem'),
            Image.network('https://picsum.photos/200/300?grayscale'),

            Divider(),
            TituloSecao(titulo: 'Ícone'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.favorite, color: Colors.red, size: 32),
                Icon(Icons.star, color: Colors.amber, size: 32),
                Icon(Icons.settings, color: Colors.blue, size: 32),
              ],
            ),
            Divider(),
            TituloSecao(titulo: 'Elevated button'),
            ElevatedButton(onPressed: () {}, child: Text('Clique Aqui')),
        ],
        ),
      ),
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
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
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}