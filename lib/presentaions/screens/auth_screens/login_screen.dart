// ignore_for_file: must_be_immutable

import '../../widgets/imports.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController emialContoller = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Column(children: [
      CustomTextField(controller: emialContoller, labelText: AppString.enterYourEmail)
    ,  CustomTextField(controller: passwordContoller, labelText: AppString.enterYourPassword)
    ],),
    );
  }
}
