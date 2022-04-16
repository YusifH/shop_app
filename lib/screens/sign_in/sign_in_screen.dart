import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_in/body.dart';
class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static String routeNmae = "/sign_in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign In', style: TextStyle(color: Color(0xFFF888888), fontSize: 18, )),
      ),
      body: Body(),
    );
  }
}
