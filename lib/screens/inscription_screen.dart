import 'package:flutter/material.dart';
import '../utils/couleurs.dart';

class InscriptionScreen extends StatefulWidget {
  const InscriptionScreen({super.key});

  @override
  State<InscriptionScreen> createState() => _InscriptionScreenState();
}

class _InscriptionScreenState extends State<InscriptionScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nomController = TextEditingController();
  final _emailController = TextEditingController();
  final _telController = TextEditingController();

  String _niveau = "Débutant";
  bool _accepte = false;

  @override
  void dispose() {
    _nomController.dispose();
    _emailController.dispose();
    _telController.dispose();
    super.dispose();
  }

  void _envoyer() {
    if (!_formKey.currentState!.validate()) return;
    if (!_accepte) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Veuillez accepter les conditions"),
          backgroundColor: AppCouleurs.erreur,
        ),
      );
      return;
    }

    // Simulation d'envoi
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Inscription envoyée !"),
        content: Text(
          "Merci ${_nomController.text} !\n"
              "Nous vous contacterons à ${_emailController.text}.",
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inscription"),
        backgroundColor: AppCouleurs.primaire,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Inscrivez-vous à la formation",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Remplissez ce formulaire et nous vous recontacterons.",
                style: TextStyle(color: AppCouleurs.texteSecondaire),
              ),
              const SizedBox(height: 24),
              TextFormField(
                controller: _nomController,
                decoration: const InputDecoration(
                  labelText: "Nom complet",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
                validator: (v) => v == null || v.isEmpty ? "Champ requis" : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                validator: (v) {
                  if (v == null || v.isEmpty) return "Champ requis";
                  if (!v.contains("@")) return "Email invalide";
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _telController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: "Téléphone (optionnel)",
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _niveau,
                decoration: const InputDecoration(
                  labelText: "Niveau actuel",
                  prefixIcon: Icon(Icons.school),
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(value: "Débutant", child: Text("Débutant")),
                  DropdownMenuItem(value: "Intermédiaire", child: Text("Intermédiaire")),
                  DropdownMenuItem(value: "Avancé", child: Text("Avancé")),
                ],
                onChanged: (v) => setState(() => _niveau = v!),
              ),
              const SizedBox(height: 20),
              CheckboxListTile(
                value: _accepte,
                onChanged: (v) => setState(() => _accepte = v!),
                title: const Text("J'accepte les conditions d'inscription"),
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.zero,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _envoyer,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppCouleurs.primaire,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text("Envoyer l'inscription"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}