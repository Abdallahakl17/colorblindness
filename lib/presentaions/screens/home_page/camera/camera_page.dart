import 'dart:io';
import 'package:color_blindness/presentaions/widgets/imports.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EditImagePage extends StatefulWidget {
  final File image;

  const EditImagePage({super.key, required this.image});

  @override
  _EditImagePageState createState() => _EditImagePageState();
}

class _EditImagePageState extends State<EditImagePage> {
  String colorName = '';

Future<void> _uploadImage() async {
  final uri = Uri.parse('http://192.168.1.8:8000/predict/');
  final request = http.MultipartRequest('POST', uri)
    ..files.add(await http.MultipartFile.fromPath('file', widget.image.path));

  try {
    final response = await request.send();
    if (response.statusCode == 200) {
      final responseBody = await response.stream.bytesToString();
      final jsonResponse = json.decode(responseBody);
      setState(() {
        colorName = jsonResponse['predicted_color']; // Access the correct key
      });
    } else {
      setState(() {
        colorName = 'Error: ${response.reasonPhrase}';
        print(colorName);
      });
    }
  } catch (e) {
    setState(() {
      colorName = 'Error: $e';
      print(colorName);
    });
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detect color'),
      ),
      body: Padding(
        padding:   const EdgeInsets.all(24),
        child: Column(
          children: [
            Expanded(flex: 3,
              child: Image.file(widget.image),
            ),                    SizedBox(height: 32.h,),

          
            ElevatedButton(
              onPressed: _uploadImage,
              child: const Text('Upload Image'),
            ),
            if (colorName.isNotEmpty)
              Expanded(
                child: Column(
                  
                  children: [
                    const Spacer(),
                    Padding(
                      padding:   EdgeInsets.all(8.w),
                      child: Text('Color Name : $colorName',style: Theme.of(context).textTheme.bodyLarge,),
 
                  ],
                ),
              ),
            SizedBox(height: 10.h,)
          ],
        ),
      ),
    );
  }
}
