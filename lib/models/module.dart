import 'package:flutter/material.dart';

class Module {
  final int numero;
  final String titre;
  final String description;
  final List<String> contenu;
  final IconData icone;
  final int duree;

  const Module({
    required this.numero,
    required this.titre,
    required this.description,
    required this.contenu,
    required this.icone,
    required this.duree,
  });
}

final List<Module> modules = [
  const Module(
    numero: 1,
    titre: "Les Fondations",
    description: "Dart, Widget Tree, Stateless/Stateful",
    contenu: [
      "Installation de Flutter",
      "Dart : variables, types, Null Safety",
      "Dart : conditions, boucles, fonctions",
      "Dart : collections (List, Map, Set)",
      "Widget Tree",
      "StatelessWidget vs StatefulWidget",
      "Widgets de base (Text, Container, Center)",
    ],
    icone: Icons.school,
    duree: 7,
  ),
  const Module(
    numero: 2,
    titre: "Mise en page & Design",
    description: "Row, Column, Stack, Material, Images",
    contenu: [
      "Row, Column, Expanded, Flexible",
      "mainAxisAlignment / crossAxisAlignment",
      "Stack et Positioned",
      "AppBar, Card, ListTile",
      "Boutons (Elevated, Outlined, Icon)",
      "Images (network, asset, BoxFit)",
      "TP1 : Clonage Spotify",
    ],
    icone: Icons.design_services,
    duree: 7,
  ),
  const Module(
    numero: 3,
    titre: "Listes & Interactivité",
    description: "ListView, GridView, setState",
    contenu: [
      "ListView.builder & GridView.builder",
      "ListView.separated",
      "setState en profondeur",
      "GestureDetector & InkWell",
      "SnackBar & AlertDialog",
      "PageView.builder vertical",
      "TP2 : Clonage Instagram",
    ],
    icone: Icons.list_alt,
    duree: 7,
  ),
  const Module(
    numero: 4,
    titre: "Navigation & Projet Final",
    description: "Navigator, Routes, Projet complet",
    contenu: [
      "Navigator.push / pop",
      "Passage de paramètres",
      "Routes nommées",
      "BottomNavigationBar",
      "Découpage en widgets",
      "Projet final complet",
      "Génération d'APK",
    ],
    icone: Icons.alt_route,   // ou Icons.explore, Icons.map
    duree: 9,
  ),
];