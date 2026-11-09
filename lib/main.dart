import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IFMS Coxim',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0F8B52)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class InfoItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;

  const InfoItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
  });
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final List<InfoItem> professores = const [
    InfoItem(
      title: 'Prof. Dr. João Silva',
      subtitle: 'Coordenador de Tecnologia',
      icon: Icons.person,
      color: Color(0xFF0F8B52),
    ),
    InfoItem(
      title: 'Prof.ª Dra. Maria Souza',
      subtitle: 'Docente de Matemática',
      icon: Icons.school,
      color: Color(0xFFD62828),
    ),
    InfoItem(
      title: 'Prof. Me. Carlos Mendes',
      subtitle: 'Professor de Informática',
      icon: Icons.computer,
      color: Color(0xFF0F8B52),
    ),
  ];

  final List<InfoItem> disciplinas = const [
    InfoItem(
      title: 'Programação I',
      subtitle: 'Fundamentos de lógica e algoritmos',
      icon: Icons.code,
      color: Color(0xFFD62828),
    ),
    InfoItem(
      title: 'Banco de Dados',
      subtitle: 'Modelagem e SQL',
      icon: Icons.storage,
      color: Color(0xFF0F8B52),
    ),
    InfoItem(
      title: 'Engenharia de Software',
      subtitle: 'Métodos e processos de desenvolvimento',
      icon: Icons.engineering,
      color: Color(0xFFD62828),
    ),
  ];

  final List<InfoItem> estudantes = const [
    InfoItem(
      title: 'Ana Beatriz',
      subtitle: 'Técnico em Informática',
      icon: Icons.face,
      color: Color(0xFF0F8B52),
    ),
    InfoItem(
      title: 'Pedro Henrique',
      subtitle: 'Curso de Sistemas para Internet',
      icon: Icons.people_alt,
      color: Color(0xFFD62828),
    ),
    InfoItem(
      title: 'Julia Ramos',
      subtitle: 'Graduanda em Administração',
      icon: Icons.account_circle,
      color: Color(0xFF0F8B52),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFF6F7F5),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF0F8B52), Color(0xFFB9062F)],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 30, 24, 12),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Icon(
                          Icons.location_city,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'IFMS',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Campus Coxim',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.22),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Informações acadêmicas',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          _StatChip(label: 'Professores', value: '32'),
                          _StatChip(label: 'Disciplinas', value: '18'),
                          _StatChip(label: 'Alunos', value: '540'),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 18),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.08),
                        blurRadius: 18,
                        offset: const Offset(0, -4),
                      ),
                    ],
                  ),
                  child: const TabBar(
                    labelColor: Color(0xFF0F8B52),
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Color(0xFFD62828),
                    indicatorWeight: 4,
                    tabs: [
                      Tab(text: 'Professores'),
                      Tab(text: 'Disciplinas'),
                      Tab(text: 'Estudantes'),
                    ],
                  ),
                ),

                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: TabBarView(
                      children: [
                        _buildTabContent(professores, const Color(0xFF0F8B52)),
                        _buildTabContent(disciplinas, const Color(0xFFD62828)),
                        _buildTabContent(estudantes, const Color(0xFF0F8B52)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget _buildTabContent(List<InfoItem> items, Color accentColor) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final item = items[index];
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.12),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: item.color.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(item.icon, color: item.color),
            ),
            title: Text(
              item.title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1E2A39),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                item.subtitle,
                style: const TextStyle(color: Color(0xFF667085), fontSize: 13),
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
              color: accentColor,
            ),
          ),
        );
      },
    );
  }
}

class _StatChip extends StatelessWidget {
  final String label;
  final String value;

  const _StatChip({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.14),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(color: Colors.white70, fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}
