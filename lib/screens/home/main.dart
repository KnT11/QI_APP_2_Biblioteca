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
  bool _isSettingsClicked = false;

  void _toggleSettingsColor() {
    setState(() {
      _isSettingsClicked = !_isSettingsClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF4817),
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
              icon: Icon(
                Icons.settings,
                color: _isSettingsClicked ? Colors.blue : Colors.white,
              ),
              onPressed: () {
                _toggleSettingsColor();
              },
            ),
            const Text(
              'Mangás.MOB',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 48),
          ],
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddMANGA()),
          );
        },
        tooltip: 'Adicionar',
        backgroundColor: const Color(0xFFFF4817),
        mini: false,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
                  shadowColor: const Color(0xFFFF4817), // Adiciona sombra laranja ao Card
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
                          style: TextStyle(fontSize: 20, color: Color(0xFFFF4817)),
                        ),
                        Expanded(child: Container()),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: FloatingActionButton(
                            onPressed: () {},
                            tooltip: 'Editar',
                            backgroundColor: const Color(0xFFFF4817),
                            foregroundColor: Colors.white,
                            mini: true,
                            child: const Icon(Icons.edit),
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
                  shadowColor: const Color(0xFFFF4817), // Adiciona sombra laranja ao Card
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
                          style: TextStyle(fontSize: 20, color: Color(0xFFFF4817)),
                        ),
                        Expanded(child: Container()),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: FloatingActionButton(
                            onPressed: () {},
                            tooltip: 'Editar',
                            backgroundColor: const Color(0xFFFF4817),
                            foregroundColor: Colors.white,
                            mini: true,
                            child: const Icon(Icons.edit),
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

class AddMANGA extends StatelessWidget {
  const AddMANGA({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF4817),
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
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            const Text(
              'Mangás.MOB',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 48),
          ],
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.save,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 4,
          shadowColor: const Color(0xFFFF4817), // Adiciona sombra laranja ao Card
          child: Container(
            width: 300,
            padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 20),
                const Text(
                  'Adicionar MANGÁ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Color(0xFFFF4817)),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Color(0xFFFF4817)),
                  decoration: InputDecoration(
                    labelText: 'Nome do Mangá',
                    labelStyle: const TextStyle(color: Color(0xFFFF4817)),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFFFF4817)),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Color(0xFFFF4817)),
                  decoration: InputDecoration(
                    labelText: 'Autor',
                    labelStyle: const TextStyle(color: Color(0xFFFF4817)),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFFFF4817)),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Color(0xFFFF4817)),
                  decoration: InputDecoration(
                    labelText: 'Gênero',
                    labelStyle: const TextStyle(color: Color(0xFFFF4817)),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFFFF4817)),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFFFF4817),
                    minimumSize: const Size(double.infinity, 40),
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: const BorderSide(color: Color(0xFFFF4817)),
                    ),
                  ),
                  child: const Text('Adicionar Imagem'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFFFF4817),
                    minimumSize: const Size(double.infinity, 40),
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: const BorderSide(color: Color(0xFFFF4817)),
                    ),
                  ),
                  child: const Text('Salvar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
