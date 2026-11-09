import 'package:appfinal/models.dart';
import 'package:appfinal/screens/professor_detail_page.dart';
import 'package:appfinal/screens/student_detail_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<ProfessorProfile> professores = [
    ProfessorProfile(
      name: 'Prof. Dr. João Silva',
      role: 'Coordenador de Tecnologia',
      area: 'Computação e desenvolvimento',
      icon: Icons.person,
      color: Color(0xFF0F8B52),
      curriculum: [
        'Doutor em Ciência da Computação pela UFMS.',
        'Especialista em desenvolvimento de software, arquitetura de sistemas e inovação acadêmica.',
        'Coordena projetos de extensão e pesquisa com foco em tecnologia aplicada ao ensino.',
      ],
    ),
    ProfessorProfile(
      name: 'Prof.ª Dra. Maria Souza',
      role: 'Docente de Matemática',
      area: 'Matemática aplicada',
      icon: Icons.school,
      color: Color(0xFFD62828),
      curriculum: [
        'Doutora em Matemática pela Unesp.',
        'Atua em metodologias de ensino e modelagem matemática para curso técnicos e superiores.',
        'Orienta estudantes em projetos relacionados a estatística e análise de dados.',
      ],
    ),
    ProfessorProfile(
      name: 'Prof. Me. Carlos Mendes',
      role: 'Professor de Informática',
      area: 'Informática e redes',
      icon: Icons.computer,
      color: Color(0xFF0F8B52),
      curriculum: [
        'Mestre em Sistemas de Informação.',
        'Trabalha com redes, suporte técnico e aplicações educacionais.',
        'Participa de projetos de capacitação tecnológica para comunidade acadêmica.',
      ],
    ),
  ];

  static const List<InfoItem> disciplinas = [
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

  static const List<StudentProfile> estudantes = [
    StudentProfile(
      name: 'Ana Beatriz',
      course: 'Técnico em Informática',
      period: '3º período',
      icon: Icons.face,
      color: Color(0xFF0F8B52),
      performance: [
        DisciplineScore(name: 'Prog', value: 92),
        DisciplineScore(name: 'DB', value: 88),
        DisciplineScore(name: 'Redes', value: 90),
        DisciplineScore(name: 'Mat', value: 84),
      ],
    ),
    StudentProfile(
      name: 'Pedro Henrique',
      course: 'Sistemas para Internet',
      period: '5º período',
      icon: Icons.people_alt,
      color: Color(0xFFD62828),
      performance: [
        DisciplineScore(name: 'Prog', value: 86),
        DisciplineScore(name: 'DB', value: 80),
        DisciplineScore(name: 'SW', value: 94),
        DisciplineScore(name: 'Mat', value: 78),
      ],
    ),
    StudentProfile(
      name: 'Julia Ramos',
      course: 'Administração',
      period: '2º período',
      icon: Icons.account_circle,
      color: Color(0xFF0F8B52),
      performance: [
        DisciplineScore(name: 'Prog', value: 74),
        DisciplineScore(name: 'DB', value: 70),
        DisciplineScore(name: 'SW', value: 81),
        DisciplineScore(name: 'Mat', value: 88),
      ],
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                        _buildProfessorList(context),
                        _buildDisciplineList(),
                        _buildStudentList(context),
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

  Widget _buildProfessorList(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: professores.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final professor = professores[index];
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
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ProfessorDetailPage(professor: professor),
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: professor.color.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(professor.icon, color: professor.color),
            ),
            title: Text(
              professor.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1E2A39),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                professor.role,
                style: const TextStyle(color: Color(0xFF667085), fontSize: 13),
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
              color: Color(0xFF0F8B52),
            ),
          ),
        );
      },
    );
  }

  Widget _buildDisciplineList() {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: disciplinas.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final item = disciplinas[index];
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
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
              color: Color(0xFFD62828),
            ),
          ),
        );
      },
    );
  }

  Widget _buildStudentList(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: estudantes.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final student = estudantes[index];
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
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => StudentDetailPage(student: student),
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: student.color.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(student.icon, color: student.color),
            ),
            title: Text(
              student.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1E2A39),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                '${student.course} • ${student.period}',
                style: const TextStyle(color: Color(0xFF667085), fontSize: 13),
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
              color: Color(0xFF0F8B52),
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
