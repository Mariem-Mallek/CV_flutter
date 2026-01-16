import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String msg;
  const DetailsPage({super.key, required this.msg});

  @override
  State<DetailsPage> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Détails')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Plus d'informations :",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),

            const SizedBox(height: 8),

            Text(
              widget.msg, 
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
              softWrap: true,
            ),

            const SizedBox(height: 20),
            
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Retour'),
            ),
          ],
        ),
      ),
    );
  }
}
