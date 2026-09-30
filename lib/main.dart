import 'package:flutter/material.dart';
import 'screens/home_tabs.dart';
import 'utils/couleurs.dart';

void main() => runApp(const FormationApp());

class FormationApp extends StatelessWidget {
  const FormationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Formation Flutter",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppCouleurs.primaire),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const HomeTabs(),
    );
  }
}