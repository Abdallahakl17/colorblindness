import 'package:flutter/material.dart';

class IshiharaTestPage extends StatelessWidget {
  const IshiharaTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IshiharaTestPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'IshiharaTestPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
