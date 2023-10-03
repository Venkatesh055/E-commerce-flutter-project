import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Collections extends StatelessWidget {
  const Collections({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(0.16),
              color: Colors.blue,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.laptop_windows_sharp,
                        size: 30,
                      ),
                      Text(
                        ' PC',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      Text(
                        'Recycle',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.browse_gallery,
                        color: Colors.black,
                        size: 30,
                      ),
                      Text(
                        'Chrome',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.insert_photo,
                        color: Colors.black,
                        size: 30,
                      ),
                      Text(
                        'Images',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.assignment_turned_in_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                      Text(
                        'Docs',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        height: 160,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.window,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            color: Colors.grey,
                            width: 500,
                            height: 30,
                            child: Row(
                              children: [
                                Text('Search'),
                                Icon(Icons.search),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.folder, size: 35, color: Colors.amber),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.wechat,
                            size: 35,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.volume_down_sharp,
                            color: Colors.white,
                            size: 25,
                          ),
                          Icon(
                            Icons.battery_5_bar_sharp,
                            size: 25,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.wifi,
                            size: 25,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.message_sharp,
                            size: 25,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
