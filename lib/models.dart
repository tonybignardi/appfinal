import 'package:flutter/material.dart';

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

class ProfessorProfile {
  final String name;
  final String role;
  final String area;
  final IconData icon;
  final Color color;
  final List<String> curriculum;

  const ProfessorProfile({
    required this.name,
    required this.role,
    required this.area,
    required this.icon,
    required this.color,
    required this.curriculum,
  });
}

class DisciplineScore {
  final String name;
  final double value;

  const DisciplineScore({required this.name, required this.value});
}

class StudentProfile {
  final String name;
  final String course;
  final String period;
  final IconData icon;
  final Color color;
  final List<DisciplineScore> performance;

  const StudentProfile({
    required this.name,
    required this.course,
    required this.period,
    required this.icon,
    required this.color,
    required this.performance,
  });
}
