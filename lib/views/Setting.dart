import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key, required String title});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              width: 300,
              color: Colors.black.withOpacity(0.7),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.amber[50],
                                      size: 20,
                                    )),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  'Settings',
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      color: Colors.amber[50],
                                      // color: Colors.black.withOpacity(0.8),
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: 5),
                  Container(
                    width: 300,
                    height: 40,
                    color: Colors.blueGrey.shade100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 10),
                          child: Text(
                            'Preference',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 85,
                    width: 300,
                    color: Colors.black.withOpacity(0.8),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 10,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.language,
                                color: Colors.amber[50],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Launguage',
                                  style: TextStyle(
                                    color: Colors.amber[50],
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(
                                Icons.dark_mode_sharp,
                                color: Colors.amber[50],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Dark Mode',
                                  style: TextStyle(
                                    color: Colors.amber[50],
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 40,
                    color: Colors.blueGrey.shade100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 5),
                          child: Text(
                            'Personal Information',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 180,
                    width: 300,
                    color: Colors.black.withOpacity(0.8),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 10,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.security_rounded,
                                color: Colors.amber[50],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Privacy & Security',
                                  style: TextStyle(
                                    color: Colors.amber[50],
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.accessibility_new,
                                color: Colors.amber[50],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Accessibility',
                                  style: TextStyle(
                                    color: Colors.amber[50],
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.help_outlined,
                                color: Colors.amber[50],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Help & Support',
                                  style: TextStyle(
                                    color: Colors.amber[50],
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.logout_outlined,
                                color: Colors.amber[50],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Logout',
                                  style: TextStyle(
                                    color: Colors.amber[50],
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              color: Colors.black.withOpacity(0.7),
            ),
          ],
        ),
      ),
    );
  }
}
