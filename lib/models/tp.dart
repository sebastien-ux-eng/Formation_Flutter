import 'package:flutter/material.dart';

class TP {
  final String titre;
  final String description;
  final String imageUrl;
  final String difficulte;
  final String duree;
  final List<String> objectifs;
  final Color couleur;

  const TP({
    required this.titre,
    required this.description,
    required this.imageUrl,
    required this.difficulte,
    required this.duree,
    required this.objectifs,
    required this.couleur,
  });
}

final List<TP> tps = [
  TP(
    titre: "TP1 — Spotify",
    description: "Clonage de l'interface d'accueil Spotify",
    imageUrl: "assets/images/tp_spotify.png",
    difficulte: "Débutant",
    duree: "2-3h",
    objectifs: [
      "AppBar avec actions",
      "GridView 2×3",
      "ListView horizontal",
      "Widgets réutilisables",
    ],
    couleur: const Color(0xFF1DB954),
  ),
  TP(
    titre: "TP2 — Tiktok",
    description: "Clonage de l'interface d'accueil TikTok",
    imageUrl: "assets/images/tp_tiktok.jpg",
    difficulte: "Intermédiaire",
    duree: "3-4h",
    objectifs: [
      "PageView.builder vertical",
      "Stack + Positioned",
      "Like interactif",
      "Overlay d'information",
    ],
    couleur: const Color(0xFFE1306C),
  ),
];