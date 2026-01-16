import 'package:flutter/material.dart';
import 'homePage.dart';
import 'profilePage.dart';
import 'experiencePage.dart';
import 'educationPage.dart';
import 'detailsPage.dart';
import 'skillsPage.dart';

void main() => runApp(const MonCVApp());

class MonCVApp extends StatelessWidget {
  const MonCVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon CV',
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
        '/profile': (_) => const ProfilePage(),
        '/experience': (_) => const ExperiencePage(),
        '/education': (_) => const EducationPage(),
        '/skills': (_) => const SkillsPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/details') {
          final msg = settings.arguments as String? ?? 'Détails';
          return MaterialPageRoute(
            builder: (_) => DetailsPage(msg: msg));
        }
        return null;
      },
    );
  }
}

