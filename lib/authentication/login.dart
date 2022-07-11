// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/authentication/register.dart';
import 'package:pbl_fitness_app/components/background.dart';
import '../screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  String? get _errorTextUsername {
    if (_usernameController.text.isEmpty) return 'username can\'t be empty';
    return null;
  }

  String? get _errorTextPassword {
    if (_passwordController.text.isEmpty) return 'password can\'t be empty';
    if (_passwordController.text.length < 5) return 'password is too short';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        key: Key('login'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "LOGIN",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                    fontSize: 36),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: _usernameController,
                onChanged: (text) => setState(() => _usernameController.text),
                decoration: InputDecoration(
                  labelText: "Username",
                  errorText: _errorTextUsername,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: _passwordController,
                onChanged: (text) => setState(() => _passwordController.text),
                decoration: InputDecoration(
                  labelText: "Password",
                  errorText: _errorTextPassword,
                ),
                obscureText: true,
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Text(
                "Forgot your password?",
                style: TextStyle(fontSize: 12, color: Color(0XFF2661FA)),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 255, 136, 34),
                        Color.fromARGB(255, 255, 177, 41)
                      ])),
                  padding: const EdgeInsets.all(0),
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: RaisedButton(
                      onPressed: () {
                        if (_errorTextUsername == null && _errorTextPassword == null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (BuildContext context) => HomeScreen()),
                          );
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      padding: const EdgeInsets.all(0),
                      color: Color.fromARGB(255, 255, 136, 34),
                      child: Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()))
                },
                child: Text(
                  "Don't Have an Account? Sign up",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
