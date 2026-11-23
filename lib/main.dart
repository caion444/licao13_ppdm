import 'package:flutter/material.dart';
import 'screens/catalogo_screen.dart';
import 'screens/formulario_screen.dart';
import 'screens/perfil_dev_screen.dart';

void main() {
  runApp(const Licao13App());
}

class Licao13App extends StatelessWidget {
  const Licao13App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lição 13 - PPDM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomeNavegacao(),
    );
  }
}

class HomeNavegacao extends StatefulWidget {
  const HomeNavegacao({super.key});

  @override
  State<HomeNavegacao> createState() => _HomeNavegacaoState();
}

class _HomeNavegacaoState extends State<HomeNavegacao> {
  int _indiceAtual = 0;

  final List<Widget> _telas = const [
    PerfilDevScreen(),
    CatalogoScreen(),
    FormularioScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_indiceAtual],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _indiceAtual,
        onDestinationSelected: (int index) {
          setState(() {
            _indiceAtual = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Ex. 1: Perfil',
          ),
          NavigationDestination(
            icon: Icon(Icons.list_alt_outlined),
            selectedIcon: Icon(Icons.list_alt),
            label: 'Ex. 2: Catálogo',
          ),
          NavigationDestination(
            icon: Icon(Icons.edit_note_outlined),
            selectedIcon: Icon(Icons.edit_note),
            label: 'Ex. 3: Formulário',
          ),
        ],
      ),
    );
  }
}
