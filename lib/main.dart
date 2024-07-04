import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela Inicial',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MANGAS.MOB'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.white, // Cor do ícone de configuração
              ),
              onPressed: () {
                // Implemente ação ao pressionar o ícone de configuração
              },
            ),
            const Text(
              'Mangás.MOB',
              style: TextStyle(
                color: Colors.white, // Cor do texto 'MANGA.MOB'
              ),
            ),
            const SizedBox(width: 48), // Espaço suficiente para o ícone de configuração
          ],
        ),
        centerTitle: true, // Centraliza o título da AppBar
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implemente ação ao pressionar o FAB
        },
        tooltip: 'Adicionar',
        backgroundColor: const Color.fromARGB(255, 243, 149, 8),
        mini: false,
        child: const Icon(
          Icons.add,
          color: Colors.white, // Cor do ícone de adição (símbolo)
        ), // Define o tamanho como padrão
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Posiciona na parte inferior direita
      body: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 4,
                  child: Container(
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Titulo',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.orange), // Altera a cor do texto para laranja
                        ),
                        Expanded(child: Container()), // Espaço flexível para empurrar o botão para a parte inferior
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: FloatingActionButton(
                            onPressed: () {
                              // Implemente ação ao pressionar o botão de edição
                            },
                            tooltip: 'Editar',
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.white,
                            mini: true, // Cor do ícone do botão de edição
                            child: const Icon(Icons.edit), // Tornar o botão menor
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 4,
                  child: Container(
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Titulo',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.orange), // Altera a cor do texto para laranja
                        ),
                        Expanded(child: Container()), // Espaço flexível para empurrar o botão para a parte inferior
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: FloatingActionButton(
                            onPressed: () {
                              // Implemente ação ao pressionar o botão de edição
                            },
                            tooltip: 'Editar',
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.white,
                            mini: true, // Cor do ícone do botão de edição
                            child: const Icon(Icons.edit), // Tornar o botão menor
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
