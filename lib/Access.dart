import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SettingPageUI extends StatefulWidget {
  const SettingPageUI({super.key, required String title});

  @override
  State<SettingPageUI> createState() => _SettingPageUIState();
}

class _SettingPageUIState extends State<SettingPageUI> {
  bool valNote1 = true;
  bool valNote2 = false;
  bool valNote3 = false;

  onChangedFunction1(bool newvalue1) {
    setState(() {
      valNote1 = newvalue1;
    });
  }

  onChangedFunction2(bool newvalue2) {
    setState(() {
      valNote2 = newvalue2;
    });
  }

  onChangedFunction3(bool newvalue3) {
    setState(() {
      valNote3 = newvalue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[100],
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 22, color: Colors.amber[50]),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 500,
          color: Colors.blueGrey.withOpacity(0.1),
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.person, color: Colors.blue),
                  SizedBox(width: 10),
                  Text(
                    'Account',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Divider(height: 10, thickness: 1),
              SizedBox(height: 5),
              buildAccountOption(context, "Change Password"),
              SizedBox(height: 10),
              buildAccountOption(context, "Content Setting"),
              SizedBox(height: 10),
              buildAccountOption(context, "Launguage"),
              SizedBox(height: 10),
              buildAccountOption(context, "Privacy&Security"),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.volume_up_outlined,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Notifications',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Divider(
                thickness: 1,
                height: 10,
              ),
              buildNotificationOption(
                  "Theme Dark", valNote1, onChangedFunction1),
              buildNotificationOption(
                  "Opportunity", valNote3, onChangedFunction3),
              buildNotificationOption(
                  "Account Active", valNote2, onChangedFunction2),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildNotificationOption(
      String title, bool value, Function onChangedMethod) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600]),
          ),
          Transform.scale(
            scale: 0.5,
            child: CupertinoSwitch(
                activeColor: Colors.blue,
                trackColor: Colors.grey,
                value: value,
                onChanged: (bool newvalue) {
                  onChangedMethod(newvalue);
                }),
          )
        ],
      ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: ((context) {
              return AlertDialog(
                title: Text(
                  title,
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('English'),
                    Text('Hindi'),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Close'),
                  ),
                ],
              );
            }));
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
