import 'package:flutter/material.dart';
import 'package:shaad_test/constants/color.dart';
import 'package:shaad_test/view/login_screen/widgets/login_button.dart';
import 'package:shaad_test/view/login_screen/widgets/textforms_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:background ,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(padding: EdgeInsets.only(top: height*0.1)),
            Center(
              child: TextFormLoginDetails(
                userInformation: "username",
                width: width,
                height: height,
              ),
            ),
            Center(
              child: TextFormLoginDetails(
                  userInformation: "password", width: width, height: height),
            ),
            LoginButton()
         ,Padding(padding: EdgeInsets.only(top: height*0.1)),
             ],
        ),
      ),
    );
  }
}
