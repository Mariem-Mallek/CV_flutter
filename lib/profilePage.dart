import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    const nom = 'Mallek Mariem';
    const niveau = 'Licence en Informatique de Gestion (3ème année) — ESSECT';
    const ville = 'Ben Arous, Tunisie';

    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: const [
              CircleAvatar(radius: 40, backgroundImage: AssetImage('assets/image.jpg')),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(nom, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text(niveau),
                    SizedBox(height: 2),
                    Text(ville),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text('À propos', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          const Text(
            "Étudiante motivée, souhaitant intégrer un cycle ingénieur pour renforcer mes compétences techniques et contribuer positivement aux projets.",
          ),
          const SizedBox(height: 20),
          
          Center(
            child: ElevatedButton(
              onPressed: () {
                final message = "Bienvenue $nom sur l'écran Détails !";
                Navigator.pushNamed(context, '/details', arguments: message);
              },
              child: const Text('Voir les détails'),
            ),
          ),
        ],
      ),
    );
  }
}