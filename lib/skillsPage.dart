import 'package:flutter/material.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillspageState();
}

// Section des compétences
class _SectionTitle extends StatelessWidget {
  final String text;
  const _SectionTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    );
  }
}

class _SkillspageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    final languagesProg = [
      'C',
      'Java',
      'HTML',
      'CSS',
      'JavaScript',
      'PHP',
      'C#',
      'Python',
      'Dart',
    ];
    final frameworks = [
      'JavaFX',
      'Laravel',
      'Bootstrap',
      'Node.js',
      'Express.js',
    ];
    final sgdb = ['MySQL', 'SQL', 'Oracle', 'MongoDB'];
    final outils = ['Power BI', 'Git', 'GitHub','GitLab'];
    final langues = [
      'Arabe',
      'Français (interm.)',
      'Anglais (interm.)',
      'Espagnol (élémentaire)',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Compétences')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const _SectionTitle('Langages de programmation'),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: languagesProg.map((e) => Chip(label: Text(e))).toList(),
          ),
          const SizedBox(height: 12),

          const _SectionTitle('Frameworks / Bibliothèques'),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: frameworks.map((e) => Chip(label: Text(e))).toList(),
          ),
          const SizedBox(height: 12),

          const _SectionTitle('Bases de données'),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: sgdb.map((e) => Chip(label: Text(e))).toList(),
          ),
          const SizedBox(height: 12),

          const _SectionTitle('Outils'),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: outils.map((e) => Chip(label: Text(e))).toList(),
          ),
          const SizedBox(height: 12),
          
          const _SectionTitle('Langues'),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: langues.map((e) => Chip(label: Text(e))).toList(),
          ),
        ],
      ),
    );
  }
}
