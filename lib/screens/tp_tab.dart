import 'package:flutter/material.dart';
import '../models/tp.dart';
import '../widgets/tp_card.dart';

class TpTab extends StatelessWidget {
  const TpTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Travaux Pratiques"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: tps.length,
        itemBuilder: (context, index) {
          return TpCard(tp: tps[index]);
        },
      ),
    );
  }
}