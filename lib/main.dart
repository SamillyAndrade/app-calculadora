import 'package:flutter/material.dart';
import 'calculadora.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 68, 17, 88)),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Calculadora'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Layout Superior
            Expanded(
              child: Container( ),
            ),
            Expanded(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Layout do Meio 1
                  Expanded(
                    child: Container(
                        // alignment: Alignment.center,
                        //color: const Color.fromARGB(255, 24, 242, 253),
                        // child: const Text('Primeira Coluna'),
                        ),
                  ),
                  // Layout Calculadora
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: const Calculadora(),
                    ),
                  ),
                  // Layout do Meio 3
                  Expanded(
                    child: Container(
                        //alignment: Alignment.center,
                        // color: const Color.fromARGB(255, 24, 242, 253),
                        //child: const Text('Terceira Coluna'),
                        ),
                  ),
                ],
              ),
            ),
            // Layout Inferior
            Expanded(
              flex: 2,
              child: Container(
                //alignment: Alignment.center,
                //color: const Color.fromARGB(255, 25, 108, 216),
                //child: const Text('Layout Inferior'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
