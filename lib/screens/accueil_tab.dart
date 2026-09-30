import 'package:flutter/material.dart';
import '../utils/couleurs.dart';
import 'inscription_screen.dart';

class AccueilTab extends StatelessWidget {
  const AccueilTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            backgroundColor: AppCouleurs.primaire,
            foregroundColor: Colors.white,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                "Formation Flutter",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // 1. Image bien visible
                  Image.asset(
                      'assets/images/flutter.jpg',
                      fit: BoxFit.cover
                  ),
                  // 2. Dégradé partiel (bas → haut) pour lisibilité du titre
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          AppCouleurs.primaire.withOpacity(0.85),
                          AppCouleurs.primaire.withOpacity(0.30),
                          Colors.transparent,
                        ],
                        stops: const [0.0, 0.5, 1.0],
                      ),
                    ),
                  ),
                  // 3. Icône Flutter en filigrane
                  const Center(
                    child: Icon(Icons.flutter_dash, size: 100, color: Colors.white24),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _heroSection(context),
                const SizedBox(height: 24),
                _statsSection(),
                const SizedBox(height: 24),
                _avantagesSection(),
                const SizedBox(height: 24),
                _ctaSection(context),
                const SizedBox(height: 32),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _heroSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Devenez développeur Flutter",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "Formation intensive de 4 semaines pour maîtriser le développement mobile avec Flutter et Dart.",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: AppCouleurs.texteSecondaire,
          ),
        ),
      ],
    );
  }

  Widget _statsSection() {
    return Row(
      children: [
        Expanded(child: _statCard("4", "Modules", Icons.book)),
        const SizedBox(width: 12),
        Expanded(child: _statCard("30", "Jours", Icons.calendar_today)),
        const SizedBox(width: 12),
        Expanded(child: _statCard("2", "TP", Icons.code)),
      ],
    );
  }

  Widget _statCard(String valeur, String label, IconData icone) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icone, color: AppCouleurs.primaire, size: 28),
          const SizedBox(height: 8),
          Text(
            valeur,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 12, color: AppCouleurs.texteSecondaire),
          ),
        ],
      ),
    );
  }

  Widget _avantagesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Ce que vous allez apprendre",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        _avantage("Créer des apps Flutter de A à Z", Icons.check_circle),
        _avantage("Concevoir des UI modernes et responsives", Icons.check_circle),
        _avantage("Gérer l'état et les interactions", Icons.check_circle),
        _avantage("Naviguer entre plusieurs écrans", Icons.check_circle),
        _avantage("Structurer son code proprement", Icons.check_circle),
        _avantage("Générer un APK", Icons.check_circle),
      ],
    );
  }

  Widget _avantage(String texte, IconData icone) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icone, color: AppCouleurs.succes, size: 20),
          const SizedBox(width: 12),
          Expanded(child: Text(texte, style: const TextStyle(fontSize: 15))),
        ],
      ),
    );
  }

  Widget _ctaSection(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const InscriptionScreen()),
              );
            },
            icon: const Icon(Icons.edit),
            label: const Text("S'inscrire à la formation"),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppCouleurs.primaire,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Programme bientôt disponible en PDF")),
              );
            },
            icon: const Icon(Icons.download),
            label: const Text("Télécharger le programme"),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      ],
    );
  }
}