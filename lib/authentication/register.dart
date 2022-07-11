import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/components/background.dart';
import 'package:pbl_fitness_app/screens/home_screen.dart';
import 'login.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String? get _errorTextName {
    if (_nameController.text.isEmpty) return 'name can\'t be empty';
    return null;
  }

  String? get _errorTextPhone {
    if (_phoneController.text.isEmpty) return 'phone can\'t be empty';
    if (_phoneController.text.length != 10)
      return 'phone number must be of 10 digits';
    return null;
  }

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Background(
          key: Key('register'),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "REGISTER",
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
                  controller: _nameController,
                  onChanged: (text) => setState(() => _nameController.text),
                  decoration: InputDecoration(
                    labelText: "Name",
                    errorText: _errorTextName,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: _phoneController,
                  onChanged: (text) => setState(() => _phoneController.text),
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    errorText: _errorTextPhone,
                  ),
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
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: new LinearGradient(colors: [
                          Color.fromARGB(255, 255, 136, 34),
                          Color.fromARGB(255, 255, 177, 41)
                        ])),
                    padding: const EdgeInsets.all(0),
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: RaisedButton(
                        onPressed: () {
                          if (_errorTextName == null &&
                              _errorTextPhone == null &&
                              _errorTextUsername == null &&
                              _errorTextPassword == null)
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        HomeScreen()));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80),
                        ),
                        padding: const EdgeInsets.all(0),
                        color: Color.fromARGB(255, 255, 136, 34),
                        child: Text(
                          "SIGN UP",
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
                        MaterialPageRoute(builder: (context) => LoginScreen()))
                  },
                  child: Text(
                    "Already Have an Account? Sign in",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
