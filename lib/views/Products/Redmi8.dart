import 'package:flutter/material.dart';

class Redmi8 extends StatefulWidget {
  const Redmi8({super.key});

  @override
  State<Redmi8> createState() => _Redmi8State();
}

class _Redmi8State extends State<Redmi8> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final double checkBoxSize = 36.0;
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey.shade400,
            width: 300,
            height: 1200,
            child: Expanded(
              child: Container(
                margin: EdgeInsets.all(20),
                width: 290,
                height: 390,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJXOWS6P3a7reluDNy9AYJEmxQ-rqgzcmCrw&usqp=CAU ',
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text('About this items',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.arrow_drop_down_circle_outlined,
                            size: 20, color: Colors.black),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Supports for all india 5g brands',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.arrow_drop_down_circle_outlined,
                            size: 20, color: Colors.black),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '16.55cm(6.5'
                          ')HD+90HZ display',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_drop_down_circle_outlined,
                            size: 20, color: Colors.black),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Display with LI DRM Production',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_drop_down_circle_outlined,
                            size: 20, color: Colors.black),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Octa-Core 2.2GHZ',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_drop_down_circle_outlined,
                            size: 20, color: Colors.black),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Mediatak Dimensity 700process',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Container(
                      width: 700,
                      child: Text(
                        'Redmi8Pro(8GB RAM & 128GB Storage) ',
                        style: TextStyle(
                            fontSize: 30,
                            backgroundColor: Colors.amber[50],
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 19, 27, 39)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Text(
                                  'visit the Xiaomi Store',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Row(
                                  children: [
                                    Text(
                                      '3.5',
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 71, 69, 69),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    for (var i = 1; i < 5; i++)
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 250, 232, 75),
                                      ),
                                    Icon(
                                      Icons.star_border_purple500_outlined,
                                      color: Color.fromARGB(255, 250, 232, 75),
                                    ),
                                    Text(
                                      'for Rating MI....',
                                      style: TextStyle(
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Colors.black),
                                child: Center(
                                  child: Text(
                                    'AmazonChoice',
                                    style: TextStyle(color: Colors.amber[100]),
                                  ),
                                ),
                              ),
                              SizedBox(height: 25),
                              Row(
                                children: [
                                  Text(
                                    '- 27%',
                                    style: TextStyle(
                                        letterSpacing: 1,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    '11,999 /-',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '14,999',
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey[700]),
                              ),
                              SizedBox(height: 120),
                              Padding(
                                padding: const EdgeInsets.only(left: 60.0),
                                child: Column(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0.16,
                                        primary:
                                            Color.fromARGB(255, 255, 252, 75),
                                        onPrimary:
                                            const Color.fromARGB(255, 0, 0, 0),
                                        padding: EdgeInsets.all(16.0),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0)),
                                      ),
                                      child: Text(
                                        'Add To Cart',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 45,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_circle_right,
                                    color: Colors.green,
                                  ),
                                  Text(
                                      '87% positive rating from 100K customers'),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_circle_right,
                                    color: Colors.green,
                                  ),
                                  Text('10K recent orders from this brand'),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_circle_right,
                                    color: Colors.green,
                                  ),
                                  Text('9+ years on Amazon'),
                                  SizedBox(
                                    width: 100,
                                    height: 30,
                                  ),
                                ],
                              ),
                              SizedBox(height: 90),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 250,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 15.0,
                                            spreadRadius: 5.0,
                                            offset: Offset(5.0, 5.0),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.green[100],
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20, right: 60),
                                            child: Text(
                                              'Add a Production Plan :',
                                              style: TextStyle(
                                                  color:
                                                      Colors.blueGrey.shade600,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Transform.scale(
                                                scale: checkBoxSize / 50.0,
                                                child: Checkbox(
                                                    value: isChecked,
                                                    onChanged: (newValue) {
                                                      setState(() {
                                                        isChecked = newValue!;
                                                      });
                                                    }),
                                              ),
                                              TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                      '1 Year Extended Warrenty Plan')),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'for',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text('399.00 /-',
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 13))
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.blue,
                                              onPrimary: Colors.grey[50],
                                              padding: EdgeInsets.all(16.0),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0)),
                                            ),
                                            child: Text(
                                              'Buy Now',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.lock_person,
                                                size: 25,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 5.0,
                                                ),
                                                child: TextButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                        'Secure Transaction')),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 250,
                  height: 350,
                  color: Colors.white12,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 30),
                        child: Row(
                          children: [
                            Text(
                              'Brand',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              'Xiaomi',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Network',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Unlock Carriers',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Model Name',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Note8Pro',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'OperatingSystem',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Android 13.0',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Cellular Technology',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '5 G',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Resolution',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '2400*1080',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Battery Level',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '4700MAH',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 1, left: 25),
                        child: Row(
                          children: [
                            Text(
                              'GPS',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'True',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  width: 250,
                  height: 200,
                  child: Image.network(
                    'https://media.istockphoto.com/id/1007848764/vector/video-on-mobile-screen-video-sharing-and-marketing-flat-vector-concept-with-icons.jpg?s=612x612&w=0&k=20&c=iu263H6ut0ejQEt6ue9fzIX4XKQRGzPXKhDyZh7xp-M=',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
