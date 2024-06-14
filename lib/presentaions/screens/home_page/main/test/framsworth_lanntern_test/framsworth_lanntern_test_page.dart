import 'package:flutter/material.dart';

class FramsworthLannternTestPage extends StatelessWidget {
  const FramsworthLannternTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FramsworthLannternTestPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FramsworthLannternTestPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
