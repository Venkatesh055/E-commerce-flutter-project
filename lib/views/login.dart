import 'dart:convert';

import 'package:document/views/register.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({
    super.key,
    required String title,
  });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool hidePassword = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isVisible = false;
  bool _isPasswordEigthCharacters = false;
  bool _hasPasswordOneNumber = false;

  onPasswordChanged(String Password) {
    final numericRegex = RegExp(r'[0-9]');

    setState(() {
      _isPasswordEigthCharacters = false;
      if (Password.length >= 8) _isPasswordEigthCharacters = true;

      _hasPasswordOneNumber = false;
      if (numericRegex.hasMatch(Password)) _hasPasswordOneNumber = true;
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'please enter  an email address.';
    }
    if (!EmailValidator.validate(value)) {
      return 'please enter a valid Email';
    } else {}
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'please enter a password';
    }
    if (value.length < 8) {
      return 'password must be a less than 8 letter';
    }
    return null;
  }

  Future<void> postDataToServer(String email, String password) async {
    final apiUrl =
        Uri.parse('http://indone.api.mindvisiontechnologies.com/user/login');
    final data = {
      'email': email,
      'password': password,
    };
    final jsonData = json.encode(data);

    print(jsonData);

    final response = await http.post(
      apiUrl,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonData,
    );
    if (response.statusCode == 200) {
      print('Data sent successfully');
      print('Response : ${response.body}');
    } else {
      print('Error sending data.status code: ${response.statusCode}');
      print('Response : ${response.body}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              width: 800,
              height: 800,
              child: Image.network(
                'https://t4.ftcdn.net/jpg/02/00/90/53/360_F_200905394_2u1hKNTSawkcR6N1X0aX0PiSBR1tvUMn.jpg',
                fit: BoxFit.cover,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 500,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Welcome back!',
                      style: TextStyle(
                          letterSpacing: 0.1,
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Text(
                    'Lets check you are Updating!',
                    style: TextStyle(
                        color: Color.fromARGB(255, 73, 24, 24),
                        fontSize: 10,
                        fontWeight: FontWeight.w200),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: SizedBox(
                      width: 300,
                      child: TextFormField(
                        validator: validateEmail,
                        controller: emailController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 10),
                            labelText: 'Email ID',
                            suffixIcon: Icon(Icons.email)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      validator: validatePassword,
                      controller: passwordController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.visibility),
                          labelText: 'Password',
                          contentPadding: EdgeInsets.only(top: 0.5),
                          hintText: 'Enter The Password'),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.5),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final email = emailController.text;
                          final password = passwordController.text;
                          postDataToServer(email, password);
                        }
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      (Register(title: 'Register'))),
                            );
                            print('Activate');
                          },
                          child: Text(
                            'Do You Have An Account?',
                            style: TextStyle(
                                color: Color.fromARGB(226, 117, 75, 28)),
                          ),
                          onLongPress: () {
                            Navigator.pushReplacementNamed(
                                context, '/Register');
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //         Register(title: 'Register'),
                            //   ),
                            // );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(60),
                          child: Column(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Forget Password?')),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          // Container(
          //   child: Image.asset(
          //       'male-animator-sitting-computer-desk-creating-project-graphic-motion-designer-sitting-workplace-studio-developing-web-game-flat-vector-illustration-design-art-concept_74855-22510'),
          // ),
        ],
      ),
    );
  }
}
