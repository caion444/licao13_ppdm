import 'package:flutter/material.dart';

class PerfilDevScreen extends StatelessWidget {
  const PerfilDevScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Perfil Dev'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          // Exercicio 4: Container com fundo gradiente (LinearGradient)
          child: Container(
            constraints: const BoxConstraints(maxWidth: 420),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.indigo.shade50,
                  Colors.blue.shade100,
                ],
              ),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.indigo.shade200, width: 1.5),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Exercicio 1: CircleAvatar com imagem real via NetworkImage
                  CircleAvatar(
                    radius: 52,
                    backgroundColor: Colors.indigo.shade200,
                    foregroundImage: const NetworkImage(
                      'https://i.pravatar.cc/300?img=11',
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 55,
                      color: Colors.indigo,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Caio',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Desenvolvedor Mobile em Formação',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const Divider(height: 32, color: Colors.indigo),
                  _buildInfoRow(Icons.badge, 'Nome:', 'Caio'),
                  const SizedBox(height: 12),
                  _buildInfoRow(Icons.nights_stay, 'Turno:', 'Noturno'),
                  const SizedBox(height: 12),
                  _buildInfoRow(Icons.school, 'Turma:', 'T2DEV-T3'),
                  const SizedBox(height: 12),
                  _buildInfoRow(
                    Icons.email,
                    'E-mail:',
                    'caio.dev@estudante.edu.br',
                  ),
                  const Divider(height: 32, color: Colors.indigo),
                  // Exercicio 2: Secao "Sobre Mim" com breve biografia
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sobre Mim',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Estudante de Desenvolvimento de Sistemas apaixonado por tecnologia, criação de interfaces modernas em Flutter e desenvolvimento de soluções mobile.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.4,
                      color: Colors.grey.shade900,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Exercicio 3: Badges de habilidades (skills) com Chip dentro de uma Row
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Habilidades',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Chip(
                          avatar: const Icon(Icons.flutter_dash, size: 18, color: Colors.indigo),
                          label: const Text('Flutter'),
                          backgroundColor: Colors.white,
                        ),
                        const SizedBox(width: 8),
                        Chip(
                          avatar: const Icon(Icons.code, size: 18, color: Colors.indigo),
                          label: const Text('Dart'),
                          backgroundColor: Colors.white,
                        ),
                        const SizedBox(width: 8),
                        Chip(
                          avatar: const Icon(Icons.hub, size: 18, color: Colors.indigo),
                          label: const Text('Git & GitHub'),
                          backgroundColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, color: Colors.indigo, size: 22),
        const SizedBox(width: 10),
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade900,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
