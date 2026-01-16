import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Accueil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 56,
              backgroundImage: AssetImage('assets/image.jpg'),
            ),
            const SizedBox(height: 12),
            const Text(
              'Mallek Mariem',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text('Étudiante en 3eme année LIG  — ESSECT'),
            const SizedBox(height: 16),
            const Text('mariemmallek1@gmail.com • +216 93 358 026'),

            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/profile'),
                    child: const Text('Profil'),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/education'),
                    child: const Text('Éducation'),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/experience'),
                    child: const Text('Expérience'),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/skills'),
                    child: const Text('Compétences'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
