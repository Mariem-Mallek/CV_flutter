import 'package:flutter/material.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    final education = [
      {
        'diplome': 'Licence en Informatique de Gestion',
        'ecole': 'ESSECT', 
        'annee': '2023–2026'
      },
      {
        'diplome': 'Baccalauréat Scientifique (Sciences Exp.)', 
        'ecole': 'Tunisie', 
        'annee': '2023 - Mention Bien'
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Éducation')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: education.length,
        itemBuilder: (_, i) {
          final item = education[i];
          return Card(
            child: ListTile(
              title: Text(item['diplome']!),
              subtitle: Text("${item['ecole']} • ${item['annee']}"),
            ),
          );
        },
      ),
    );
  }
}