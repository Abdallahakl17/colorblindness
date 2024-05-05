import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Apps extends StatefulWidget {
  const Apps({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Apps> {
  // Function to make the API request
  Future<void> fetchToken() async {
    final response = await http.post(
      Uri.parse('https://colorblindapi.runasp.net/api/users/login'),
      body: jsonEncode({'username': 'Mohmed@gamil', 'password': 'Mohamed@123'}),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      print(response.body.toString());
    } else {
      throw Exception('Failed to get token');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchToken();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Color Blind API Response'),
        ),
        body: const Center(
          child: Text('Token:  '), // Display token
        ),
      ),
    );
  }
}
