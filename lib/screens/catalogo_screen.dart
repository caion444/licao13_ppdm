import 'package:flutter/material.dart';

class ItemCatalogo {
  final String titulo;
  final String descricao;
  final IconData icone;

  const ItemCatalogo({
    required this.titulo,
    required this.descricao,
    required this.icone,
  });
}

class CatalogoScreen extends StatelessWidget {
  const CatalogoScreen({super.key});

  final List<ItemCatalogo> itens = const [
    ItemCatalogo(
      titulo: 'Curso Flutter & Dart',
      descricao: 'Criação de interfaces modernas multiplataforma com Material Design.',
      icone: Icons.phone_android,
    ),
    ItemCatalogo(
      titulo: 'Arquitetura Limpa Mobile',
      descricao: 'Organização de camadas, pacotes reutilizáveis e gerenciamento de estado.',
      icone: Icons.architecture,
    ),
    ItemCatalogo(
      titulo: 'Consumo de APIs REST',
      descricao: 'Requisições assíncronas com Future, async/await e desserialização JSON.',
      icone: Icons.cloud_sync,
    ),
    ItemCatalogo(
      titulo: 'Versionamento com Git & GitHub',
      descricao: 'Fluxo de commits semânticos, branches e boas práticas de repositório.',
      icone: Icons.code,
    ),
    ItemCatalogo(
      titulo: 'Testes Automatizados',
      descricao: 'Garantia de qualidade com testes unitários e testes de widgets.',
      icone: Icons.verified,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo Dinâmico'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: itens.length,
        itemBuilder: (context, index) {
          final item = itens[index];
          return Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 6.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.indigo.shade50,
                child: Icon(
                  item.icone,
                  color: Colors.indigo,
                ),
              ),
              title: Text(
                item.titulo,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  item.descricao,
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            ),
          );
        },
      ),
    );
  }
}
