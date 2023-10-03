import 'dart:js';

import 'package:document/Access.dart';
import 'package:document/modual/modual.dart';
import 'package:document/views/Slider.dart';
import 'package:document/views/Setting.dart';
import 'package:document/views/ProductList.dart';

import 'package:document/views/Collections.dart';

import 'package:document/views/Cartpage.dart';

import 'package:document/views/login.dart';
import 'package:document/views/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key, required String title});
  var indexValue = 1.obs;

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness
        ? 'DarkTheme'
        : 'LightTheme';
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Drawer(
                      backgroundColor: Colors.blueGrey[700],
                      width: 200,
                      elevation: 0.16,
                      child: ListView(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                              top: 35,
                            ),
                            child: Text(
                              'ShopMart',
                              style: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.yellow[100],
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          cutomListTile(
                            title: 'Home',
                            navigationValue: 1,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          cutomListTile(title: 'Products', navigationValue: 2),
                          SizedBox(
                            height: 10,
                          ),
                          cutomListTile(
                              title: 'Transaction', navigationValue: 3),
                          SizedBox(
                            height: 10,
                          ),
                          cutomListTile(
                              title: 'Help & Support', navigationValue: 3),
                          SizedBox(
                            height: 10,
                          ),
                          cutomListTile(title: 'Setting', navigationValue: 5),
                          SizedBox(
                            height: 10,
                          ),
                          cutomListTile(title: 'Logout', navigationValue: 6),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                  height: 20,
                ),
                Column(
                  children: [
                    // Row(
                    //   children: [
                    //     Padding(
                    //       padding: const EdgeInsets.all(8.0),
                    //       child: Container(
                    //         width: 800,
                    //         height: 37,
                    //         decoration: BoxDecoration(
                    //             color: Colors.black,
                    //             borderRadius: BorderRadius.circular(25.0)),
                    //         child: Padding(
                    //           padding: const EdgeInsets.all(8.0),
                    //           child: TextField(
                    //             decoration: InputDecoration(
                    //               border: InputBorder.none,
                    //               hintText: "search.....",
                    //               iconColor: Colors.amber[50],
                    //               icon: Icon(Icons.search),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // )
                    // // AppBar(
                    //   backgroundColor: Colors.blue,
                    //   shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(10.0)),
                    //   title: Container(
                    //     decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         borderRadius: BorderRadius.circular(10.0)),
                    //     child: Row(
                    //       children: [
                    //         Icon(Icons.search),
                    //         Expanded(
                    //
                    //.
                    //         child: TextField(
                    //           decoration: InputDecoration(
                    //               hintText: "search", border: InputBorder.none),
                    //         )),
                    //       ],
                    //     ),
                    //   ),
                    // )

                    Obx(() => Container(
                          margin: EdgeInsets.all(10.0),
                          height: 550,
                          width: MediaQuery.of(context).size.width / 1.3,
                          color: onColorChange(),
                          child: onNavigationChange(),
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  onNavigationChange() {
    if (indexValue.value == 1) {
      return Screen();
    } else if (indexValue.value == 2) {
      return Cart(title: "Cart");
    } else if (indexValue.value == 3) {
      return Login(title: "Login");
    } else if (indexValue.value == 4) {
      return Register(title: "Register");
    } else if (indexValue.value == 5) {
      return SettingPageUI(title: "Setting");
    } else if (indexValue.value == 6) {
      return Navigator.push(
        context as BuildContext,
        MaterialPageRoute(
          builder: (context) => Register(title: 'Register'),
        ),
      );
    }
    return Colors.black;
  }

  onColorChange() {
    if (indexValue.value == 1) {
      return Colors.blue;
    } else if (indexValue.value == 2) {
      return Colors.orange;
    } else if (indexValue.value == 3) {
      return Colors.blue;
    } else if (indexValue.value == 4) {
      return Colors.green;
    } else if (indexValue.value == 5) {
      return Colors.amberAccent;
    }
    return Colors.black;
  }

  cutomListTile({String? title, int? navigationValue}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Obx(() => Container(
            color: navigationValue == indexValue.value
                ? Colors.black.withOpacity(0.4)
                : Colors.transparent,
            child: ListTile(
              title: Text(
                title ?? "",
              ),
              textColor: Colors.yellow[100],
              splashColor: Colors.black,
              onTap: () {
                indexValue.value = navigationValue ?? 1;
              },
            ),
          )),
    );
  }
}
