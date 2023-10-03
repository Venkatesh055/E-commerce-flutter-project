import 'package:document/views/ProductList.dart';
import 'package:document/views/Cartpage.dart';
import 'package:document/views/home.dart';
import 'package:document/views/login.dart';
import 'package:document/views/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Application',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      // home: DartDataTypes(),
      home: HomePage(title: 'ShopMart'),
      routes: {
        '/login': (context) => Login(
              title: 'Login',
            ),
        '/register': (context) => Register(
              title: 'Registration',
            ),
      },
    );
  }
}

// class DartDataTypes extends StatelessWidget {
//   String dataTypeString = "";
//   int dataTypeInt = 1;
//   double dataTypeDouble = 0.0;
//   bool dataTypeBool = false;
//   List dataTypeList = [];
//   Map dataTypeMap = {};
//   dynamic dataTypeDynamic = null;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [],
//       ),
//     );
//   }
// }
