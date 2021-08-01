import 'package:login_ui_atlantic_weave/pages/components/input_field.dart';

import '../../constants/app_constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

bool isVisible = false;
String userName;
String password;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/fundo.png"),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            padding: EdgeInsets.all(16),
            children: [
              SizedBox(height: 40),
              Container(
                width: 350,
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
              SizedBox(height: 210),
              Container(
                child: Text(
                  'Sign in to get started',
                  style: titleLogin,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: InputField(
                  hint: 'Username',
                  prefixIcon: Icon(
                    Icons.person,
                    size: 20,
                    color: COLOR_ICON_INPUTFIELD.withOpacity(0.7),
                  ),
                  textInputType: TextInputType.emailAddress,
                  onChanged: (value) => userName = value,
                  obscureText: false,
                  enable: true,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: InputField(
                  hint: 'Password',
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    size: 18,
                    color: COLOR_ICON_INPUTFIELD.withOpacity(0.7),
                  ),
                  textInputType: TextInputType.text,
                  onChanged: (value) => password = value,
                  obscureText: true,
                  enable: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
