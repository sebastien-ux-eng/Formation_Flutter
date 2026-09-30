import 'package:flutter/material.dart';
import '../models/module.dart';
import '../widgets/module_card.dart';
import 'module_detail_screen.dart';

class ProgrammeTab extends StatelessWidget {
  const ProgrammeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Programme"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: modules.length,
        itemBuilder: (context, index) {
          final module = modules[index];
          return ModuleCard(
            module: module,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ModuleDetailScreen(module: module),
                ),
              );
            },
          );
        },
      ),
    );
  }
}