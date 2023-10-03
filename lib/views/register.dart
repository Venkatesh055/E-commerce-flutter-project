import 'dart:convert';

import 'package:document/controller/controller.dart';

import 'package:document/views/home.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:document/widgets/Text_Form.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({super.key, required String title});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool valuefirst = false;

  bool valuesecond = false;
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  String? usernameValidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter firstname';
    }
    if (value.length < 8) {
      return 'FirstName is less then  Eigth letters';
    }
    return null;
  }

  String? validateemail(String? value) {
    if (value == null || value.isEmpty) {
      return 'please enter  an email address.';
    }
    if (!EmailValidator.validate(value)) {
      return 'please enter a valid Email';
    } else {}
    return null;
  }

  String? validateeEmailPassword(String? value) {
    if (value == null || value.isValidPassword) {
      return 'please enter a password';
    }
    if (value.length < 8) {
      return 'password must be a less than 8 letter';
    }
    return null;
  }

  String? validatemobile(String? value) {
    if (value!.length < 10) {
      return 'please enter a number';
    }

    return null;
  }

  void submitValue() {
    if (_formkey.currentState!.validate()) {
      print('page is validate');
    }
  }

  @override
  void dispose() {
    userNameController.dispose();
    mobileController.dispose();
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  Future<void> postDataToServer(
      String username, String email, String password, String mobile) async {
    final apiUrl = Uri.parse(
        'https://indone.api.mindvisiontechnologies.com/user/registration');
    final data = {
      'userName': username,
      'email': email,
      'password': password,
      'Mobile': mobile,
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
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Center(
            child: SizedBox(
              width: 400,
              height: 800,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                    color: Colors.yellow[100]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextForm(
                      Controller: userNameController,
                      hintText: 'UserName',
                      labelText: 'UserName',
                      suffixIcon: Icon(
                        Icons.person_outline_sharp,
                        color: Color.fromARGB(255, 14, 41, 24),
                      ),
                      validator: usernameValidate,
                    ),
                    SizedBox(height: 10),
                    TextForm(
                      Controller: emailController,
                      hintText: 'Email',
                      labelText: 'Email ',
                      suffixIcon: Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 14, 41, 24),
                      ),
                      validator: validateemail,
                    ),
                    SizedBox(height: 10),
                    TextForm(
                      Controller: passwordController,
                      hintText: 'Password',
                      labelText: 'Password',
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Color.fromARGB(255, 14, 41, 24),
                      ),
                      validator: validateeEmailPassword,
                    ),
                    SizedBox(height: 10),
                    TextForm(
                      Controller: mobileController,
                      hintText: 'Mobile ',
                      labelText: 'Mobile',
                      suffixIcon: Icon(
                        Icons.mobile_friendly_rounded,
                        color: Color.fromARGB(255, 14, 41, 24),
                      ),
                      // validator: validatemobile,

                      validator: validatemobile,
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            final username = userNameController.text;
                            final email = emailController.text;
                            final password = passwordController.text;
                            final mobile = mobileController.text;
                            postDataToServer(
                              username,
                              email,
                              password,
                              mobile,
                            );
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.blueGrey.withOpacity(0.1)),
                        ),
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Color.fromARGB(255, 1, 15, 27),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16.0, left: 16.0, right: 16.0, bottom: 0.1),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: this.valuefirst,
                            checkColor: Colors.red,
                            activeColor: Colors.green,
                            onChanged: ((value) {
                              setState(() {
                                this.valuefirst;
                              });
                            }),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text(
                              'I agree with terms and conditions',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 54, 15, 1),
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 0.1, left: 16.0, right: 16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: this.valuefirst,
                            checkColor: Colors.red,
                            activeColor: Colors.green,
                            onChanged: ((value) {
                              setState(() {
                                this.valuefirst;
                              });
                            }),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text(
                              'I want to recieve the newsletter ',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 54, 15, 1),
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(CupertinoIcons.airplane),
          backgroundColor: Colors.yellow[50],
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(
                  title: 'LandingPage',
                ),
              ),
            );
          }),
    );
  }
}
