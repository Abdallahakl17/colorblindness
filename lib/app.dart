import 'dart:convert';
import 'dart:developer';
import 'package:color_blindness/core/utils/shared/erorr/exceptions_service.dart';
import 'package:color_blindness/data/model/login_factory_model.dart';
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
      Uri.parse('https://colorblindapi.runasp.net/api/users/register'),
      body: jsonEncode({
        'username': 'AKLamed@gamil',
         'password': 'Mohamed@123',   
           "name": "Akl",

               "role": "user"
 }),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      print(response.body.toString());
    } else {
      throw Exception('Failed to get token');
    }
  }

  // Future<LoginFactoryMoel> register() async {
  //   final response = await http.post(
  //     Uri.parse('https://colorblindapi.runasp.net/api/Users/register'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json',
  //       'accept': ' */*',
  //     },
  //     body: jsonEncode(<String, String>{
        

  //     }),
  //   );

  //   if (response.statusCode == 200) {
  //     if (response.body.isEmpty) {
  //       throw const FormatException('Empty response body');
  //     }

  //     try {
  //       final responseData = jsonDecode(response.body);
  //       print(responseData);
  //       log('success: $responseData');
  //       return LoginFactoryMoel.fromJson(responseData);
  //     } catch (e) {
  //       throw const FormatException('Error decoding JSON data');
  //     }
  //   } else {
  //     final responseData = jsonDecode(response.body);
  //     log('err: $responseData');
  //     throw ServiceExceptions(
  //       errorResponse:
  //           responseData['errorMessages']?.join(', ') ?? 'Unknown error',
  //     );
  //   }
  // }

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
          actions: [
            IconButton(onPressed: () {
    fetchToken();
            }, icon: const Icon(Icons.search))
          ],
          title: const Text('Color Blind API Response'),
        ),
        body: const Center(
          child: Text('Token:  '), // Display token
        ),
      ),
    );
  }
}
