// ignore_for_file: file_names

import 'package:color_blindness/presentaions/widgets/imports.dart';

abstract class Routes {
  static Future<dynamic> navigateTo(
      {required BuildContext context, required Widget widget}) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => widget));
  }

  static Future<dynamic> navigateToAndRemove(
      {required BuildContext context, required Widget widget}) {
    return Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
      (route) => false,
    );
  }
}
