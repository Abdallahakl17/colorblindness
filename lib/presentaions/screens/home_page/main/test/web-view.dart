// ignore_for_file: must_be_immutable

import 'package:color_blindness/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebVeiwWidge extends StatefulWidget {
  WebVeiwWidge({super.key, this.url});
  String? url;

  @override
  State<WebVeiwWidge> createState() => _WebVeiwWidgeState();
}

class _WebVeiwWidgeState extends State<WebVeiwWidge> {
  late WebViewController contollerVeiw;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    contollerVeiw = WebViewController()..loadRequest(Uri.parse(widget.url!));

    // Simulate a delay for loading
    Future.delayed(const Duration(seconds:2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            WebViewWidget(
              controller: contollerVeiw,
            ),
            if (_isLoading)
              const Center(
                child: CircularProgressIndicator(
                  color: AppColor.buttonsColor,
                ),
              )
          ],
        ));
  }
}
