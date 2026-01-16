import 'package:flutter/material.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperiencePage> {
   @override
  Widget build(BuildContext context) {
    final items = [
      {
        'titre': 'Stagiaire (1 mois)',
        'societe': 'OMV — Les Berges du Lac',
        'desc': 'Découverte du milieu pro et pratique outillage.',
        'mission': "J\'ai acquis des compétences pratiques en Excel avancée, PowerBI , JS et la communication professionnelle. ."
      },
      {
        'titre': 'Stagiaire (1 mois) — Juin 2025',
        'societe': 'BEE CODERS',
        'desc': 'Developpement d\'une application mobile SantePlus.',
        'mission': 'SantePlus : Application mobile de suivi médical (Flutter, Node.js, MongoDB) : gestion des rendez-vous, ordonnances numériques,assurances et messagerie patient–médecin.',

      },
      {
        'titre': 'Stagiaire (2 mois) — Juin / Juillet  2025',
        'societe': 'Allence',
        'desc': 'Participation à des tâches de développement.',
        'mission':'Contribution full-stack sur Allgo (Angular & microservices) avec workflows GitLab (versionning, MR, CI/CD) ; participation à la migration du back-end de Node.js vers AWS Chalice.'
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Expérience')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemBuilder: (context, i) {
          final item = items[i];
          return Card(
            child: ListTile(
              title: Text("${item['titre']} — ${item['societe']}"),
              subtitle: Text(item['desc']!),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.pushNamed(context, '/details', arguments: item['mission']),
            ),
          );
        },
      ),
    );
  }
}