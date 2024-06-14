import 'package:flutter/material.dart';

class KidsColorBlindTestPage extends StatelessWidget {
  const KidsColorBlindTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KidsColorBlindTestPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'KidsColorBlindTestPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
