import 'package:flutter/material.dart';
import '../utils/couleurs.dart';

class FormateurTab extends StatelessWidget {
  const FormateurTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formateur"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/formateur.jpg'),
              backgroundColor: AppCouleurs.primaire,
            ),
            const SizedBox(height: 16),
            const Text(
              "Ir. Sébastien ISHUKWE",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              "Développeur Flutter & Formateur",
              style: TextStyle(fontSize: 16, color: AppCouleurs.texteSecondaire),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _stat("4", "Modules"),
                _stat("2", "TP"),
                _stat("30", "Jours"),
              ],
            ),
            const SizedBox(height: 32),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "À propos",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Passionné par le développement mobile et la transmission de connaissances. "
                  "J'accompagne les débutants dans leur apprentissage de Flutter avec une approche "
                  "pratique et progressive.",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
            const SizedBox(height: 32),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Contact",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 12),
            _contactTile(Icons.email, "ishukwejustin@gmail.com"),
            _contactTile(Icons.phone, "+243 997 604 293 / 828 517 489"),
            _contactTile(Icons.location_on, "Bukavu, RDC"),
            _contactTile(Icons.work, "Développeur Flutter"),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Ouverture de l'email...")),
                  );
                },
                icon: const Icon(Icons.mail),
                label: const Text("Me contacter"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppCouleurs.primaire,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _stat(String valeur, String label) {
    return Column(
      children: [
        Text(valeur,
            style: const TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: AppCouleurs.primaire)),
        Text(label,
            style: const TextStyle(fontSize: 13, color: AppCouleurs.texteSecondaire)),
      ],
    );
  }

  Widget _contactTile(IconData icone, String texte) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icone, size: 20, color: AppCouleurs.primaire),
          const SizedBox(width: 12),
          Text(texte, style: const TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}