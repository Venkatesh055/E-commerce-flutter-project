import 'package:document/controller/CartController.dart';
import 'package:document/globals.dart';

import 'package:document/views/Products/Lava.dart';
import 'package:document/views/Products/Oneplus.dart';
import 'package:document/views/Products/Poco.dart';
import 'package:document/views/Products/Redmi.dart';
import 'package:document/views/Products/Redmi8.dart';
import 'package:document/views/Products/Samsung.dart';
import 'package:document/views/Cartpage.dart';
import 'package:document/widgets/Text_Form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modual/modual.dart';

class Cart extends StatefulWidget {
  const Cart({super.key, required String title});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final cartcontroller = Get.put(CartController());

  final valuefirst = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: Colors.blueGrey[700],
              height: MediaQuery.of(context).size.height / 0.2,
              width: MediaQuery.of(context).size.width / 2,
              child: ListView.builder(
                  itemCount: productList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return productListContainer(
                      id: productList[index]["id"],
                      deviceName: productList[index]["deviceName"],
                      Qty: productList[index]["Qty"],
                      RAM: productList[index]["RAM"],
                      ROM: productList[index]["ROM"],
                      totalPrice: productList[index]["totalPrice"],
                    );
                  }),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Go To Cart =>",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CartScreen(
                          title: 'Cart',
                        )),
              );
            },
            child: Center(
              child: Container(
                height: 500,
                width: 200,
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMF4DYh7dw1EugdUva81iiX5jJSU-dS9n8oQ&usqp=CAU'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  productListContainer(
      {int id = 0,
      String deviceName = "",
      int RAM = 0,
      int ROM = 0,
      double totalPrice = 0.0,
      int Qty = 0}) {
    return Container(
      width: 600,
      margin: EdgeInsets.all(10),
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  deviceName,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '(${RAM}GB RAM, ${ROM}GB Storage)',
                  style: TextStyle(color: Colors.brown),
                ),
                SizedBox(
                  width: 120,
                ),
                Row(
                  children: [
                    Text(
                      'Quantaties',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.3),
                      width: 25,
                      height: 25,
                      child: Center(
                          child: Obx(() => Text(
                                cartcontroller.product
                                    .where((p0) => p0.id == id)
                                    .length
                                    .toString(),
                                style: TextStyle(color: Colors.white),
                              ))),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '${totalPrice}/-',
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 255, 252, 75)),
                    child: InkWell(
                      onTap: () {
                        var product = Product(
                          id: id,
                          brand: "galaxyS23",
                          name: deviceName,
                          Quantity: Qty,
                          price: totalPrice,
                          link:
                              'https://m.media-amazon.com/images/I/71BiCb7N5YL._SX679_.jpg',
                        );
                        cartcontroller.product.add(product);
                        print(cartcontroller.product);
                      },
                      child: Center(
                        child: Text(
                          'Add Cart',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 70,
                    height: 30,
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 255, 252, 75)),
                    child: InkWell(
                      onTap: () {
                        var product = cartcontroller.product
                            .where((e) => e.id == id)
                            .first;
                        cartcontroller.product.remove(product);
                        print('sumbit');
                      },
                      child: Center(
                        child: Text(
                          'Remove',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 3.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Samsung()),
                            );
                          },
                          child: Text('About Of This Page?'))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



 // body: Row(
      //   children: [
      //    Container(width: 200, color: Colors.blue.withOpacity(0.2)),
      // SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: Padding(
      //     padding: const EdgeInsets.all(50),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         Text(
      //           'ProductList',
      //           style: TextStyle(
      //               color: Colors.blueGrey,
      //               fontSize: 25,
      //               fontWeight: FontWeight.bold),
      //         ),
      //         Container(
      //           height: 1500,
      //           child: Column(
      //             children: [
      //               Column(
      //                 children: [
      //                   Container(
      //                     width: 600,
      //                     margin: EdgeInsets.all(10),
      //                     height: 160,
      //                     decoration: BoxDecoration(
      //                       color: Colors.green[50],
      //                       borderRadius: BorderRadius.circular(20),
      //                     ),
      //                     child: Padding(
      //                       padding: const EdgeInsets.all(20.0),
      //                       child: Column(
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Row(
      //                             children: [
      //                               Text(
      //                                 'Samsung Galaxy S23',
      //                                 style: TextStyle(
      //                                     fontSize: 20,
      //                                     fontWeight: FontWeight.w500,
      //                                     color: Colors.black),
      //                               ),
      //                               SizedBox(
      //                                 width: 10,
      //                               ),
      //                               Text(
      //                                 '(8GB RAM, 128GB Storage)',
      //                                 style: TextStyle(color: Colors.brown),
      //                               ),
      //                               SizedBox(
      //                                 width: 80,
      //                               ),
      //                               Row(
      //                                 children: [
      //                                   Text('Quantaties'),
      //                                   SizedBox(
      //                                     width: 5,
      //                                   ),
      //                                   Container(
      //                                     color: Colors.white,
      //                                     width: 25,
      //                                     height: 25,
      //                                     child: Center(
      //                                         child: Obx(() => Text(
      //                                             cartcontroller.product
      //                                                 .where((p0) =>
      //                                                     p0.name ==
      //                                                     'samsung')
      //                                                 .length
      //                                                 .toString()))),
      //                                   ),
      //                                 ],
      //                               ),
      //                             ],
      //                           ),
      //                           SizedBox(height: 10),
      //                           Padding(
      //                             padding: const EdgeInsets.only(
      //                                 left: 18.0, top: 10.0),
      //                             child: Row(
      //                               mainAxisAlignment:
      //                                   MainAxisAlignment.start,
      //                               children: [
      //                                 Text(
      //                                   '79,999 /-',
      //                                   style: TextStyle(
      //                                       color: Colors.red,
      //                                       fontSize: 20),
      //                                 ),
      //                                 SizedBox(
      //                                   width: 100,
      //                                 ),
      //                                 Container(
      //                                   width: 70,
      //                                   height: 30,
      //                                   decoration: BoxDecoration(
      //                                       color: Color.fromARGB(
      //                                           255, 255, 252, 75)),
      //                                   child: InkWell(
      //                                     onTap: () {
      //                                       var product = Product(
      //                                           brand: "galaxyS23",
      //                                           name: 'samsung',
      //                                           Quantity: 1,
      //                                           price: 79999.00);
      //                                       cartcontroller.product
      //                                           .add(product);
      //                                       print(cartcontroller.product);
      //                                     },
      //                                     child: Center(
      //                                       child: Text(
      //                                         'Add Cart',
      //                                         style: TextStyle(
      //                                             color: Color.fromARGB(
      //                                                 255, 0, 0, 0),
      //                                             fontWeight:
      //                                                 FontWeight.bold),
      //                                       ),
      //                                     ),
      //                                   ),
      //                                 ),
      //                                 SizedBox(width: 5),
      //                                 Container(
      //                                   width: 70,
      //                                   height: 30,
      //                                   decoration: BoxDecoration(
      //                                       color: Color.fromARGB(
      //                                           255, 255, 252, 75)),
      //                                   child: InkWell(
      //                                     onTap: () {
      //                                       var product = cartcontroller
      //                                           .product
      //                                           .where((e) =>
      //                                               e.name == 'samsung')
      //                                           .first;
      //                                       cartcontroller.product
      //                                           .remove(product);
      //                                       print('sumbit');
      //                                     },
      //                                     child: Center(
      //                                       child: Text(
      //                                         'Remove',
      //                                         style: TextStyle(
      //                                             color: Color.fromARGB(
      //                                                 255, 0, 0, 0),
      //                                             fontWeight:
      //                                                 FontWeight.bold),
      //                                       ),
      //                                     ),
      //                                   ),
      //                                 ),
      //                               ],
      //                             ),
      //                           ),
      //                           Padding(
      //                             padding: const EdgeInsets.only(
      //                               top: 3.0,
      //                             ),
      //                             child: Row(
      //                               mainAxisAlignment:
      //                                   MainAxisAlignment.end,
      //                               children: [
      //                                 TextButton(
      //                                     onPressed: () {},
      //                                     child: TextButton(
      //                                         onPressed: () {
      //                                           Navigator.push(
      //                                             context,
      //                                             MaterialPageRoute(
      //                                                 builder: (context) =>
      //                                                     Samsung()),
      //                                           );
      //                                         },
      //                                         child: Text(
      //                                             'About Of This Page?'))),
      //                               ],
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(height: 10),
      //                   Container(
      //                     width: 600,
      //                     margin: EdgeInsets.all(10),
      //                     height: 160,
      //                     decoration: BoxDecoration(
      //                       color: Colors.green[50],
      //                       borderRadius: BorderRadius.circular(20),
      //                     ),
      //                     child: Padding(
      //                       padding:
      //                           const EdgeInsets.only(top: 20.0, left: 20),
      //                       child: Column(
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Row(
      //                             children: [
      //                               Text(
      //                                 ' Redmi10 Power',
      //                                 style: TextStyle(
      //                                     fontSize: 20,
      //                                     fontWeight: FontWeight.w500,
      //                                     color: Colors.black),
      //                               ),
      //                               SizedBox(
      //                                 width: 10,
      //                               ),
      //                               Text(
      //                                 '(8GB RAM, 128GB Storage)',
      //                                 style: TextStyle(color: Colors.brown),
      //                               ),
      //                               SizedBox(
      //                                 width: 120,
      //                               ),
      //                               Row(
      //                                 children: [
      //                                   Text('Quantaties'),
      //                                   SizedBox(
      //                                     width: 5,
      //                                   ),
      //                                   Container(
      //                                     color: Colors.white,
      //                                     width: 25,
      //                                     height: 25,
      //                                     child: Center(
      //                                         child: Obx(() => Text(
      //                                             cartcontroller.product
      //                                                 .where((e) =>
      //                                                     e.name ==
      //                                                     'redmi10')
      //                                                 .length
      //                                                 .toString()))),
      //                                   ),
      //                                 ],
      //                               )
      //                             ],
      //                           ),
      //                           SizedBox(height: 10),
      //                           Padding(
      //                             padding: const EdgeInsets.only(
      //                                 left: 18.0, top: 10.0),
      //                             child: Row(
      //                               children: [
      //                                 Text(
      //                                   '11,999 /-',
      //                                   style: TextStyle(
      //                                       color: Colors.red,
      //                                       fontSize: 20),
      //                                 ),
      //                                 SizedBox(
      //                                   width: 100,
      //                                 ),
      //                                 Container(
      //                                   width: 70,
      //                                   height: 30,
      //                                   decoration: BoxDecoration(
      //                                       color: Color.fromARGB(
      //                                           255, 255, 252, 75)),
      //                                   child: InkWell(
      //                                     onTap: () {
      //                                       var product1 = Product(
      //                                           brand: "xiaome",
      //                                           name: 'redmi10',
      //                                           Quantity: 1,
      //                                           price: 14500.00);
      //                                       cartcontroller.product
      //                                           .add(product1);
      //                                       print(cartcontroller.product);
      //                                     },
      //                                     child: Center(
      //                                       child: Text(
      //                                         'Add Cart',
      //                                         style: TextStyle(
      //                                             color: Color.fromARGB(
      //                                                 255, 0, 0, 0),
      //                                             fontWeight:
      //                                                 FontWeight.bold),
      //                                       ),
      //                                     ),
      //                                   ),
      //                                 ),
      //                                 SizedBox(width: 5),
      //                                 Container(
      //                                   width: 70,
      //                                   height: 30,
      //                                   decoration: BoxDecoration(
      //                                       color: Color.fromARGB(
      //                                           255, 255, 252, 75)),
      //                                   child: InkWell(
      //                                     onTap: () {
      //                                       var product1 = cartcontroller
      //                                           .product
      //                                           .where((e) =>
      //                                               e.name == 'redmi10')
      //                                           .first;
      //                                       cartcontroller.product
      //                                           .remove(product1);
      //                                     },
      //                                     child: Center(
      //                                       child: Text(
      //                                         'Remove',
      //                                         style: TextStyle(
      //                                             color: Color.fromARGB(
      //                                                 255, 0, 0, 0),
      //                                             fontWeight:
      //                                                 FontWeight.bold),
      //                                       ),
      //                                     ),
      //                                   ),
      //                                 ),
      //                               ],
      //                             ),
      //                           ),
      //                           Padding(
      //                             padding: const EdgeInsets.only(
      //                               top: 3.0,
      //                             ),
      //                             child: Row(
      //                               mainAxisAlignment:
      //                                   MainAxisAlignment.end,
      //                               children: [
      //                                 TextButton(
      //                                     onPressed: () {},
      //                                     child: TextButton(
      //                                         onPressed: () {
      //                                           Navigator.push(
      //                                             context,
      //                                             MaterialPageRoute(
      //                                                 builder: (context) =>
      //                                                     Redmi()),
      //                                           );
      //                                         },
      //                                         child: Text(
      //                                             'About Of This Page?'))),
      //                               ],
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(height: 10),
      //                   Container(
      //                     width: 600,
      //                     margin: EdgeInsets.all(10),
      //                     height: 160,
      //                     decoration: BoxDecoration(
      //                       color: Colors.green[50],
      //                       borderRadius: BorderRadius.circular(20),
      //                     ),
      //                     child: Padding(
      //                       padding: const EdgeInsets.all(20.0),
      //                       child: Column(
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Row(
      //                             children: [
      //                               Text(
      //                                 'Lava Blaze 5G',
      //                                 style: TextStyle(
      //                                     fontSize: 20,
      //                                     fontWeight: FontWeight.w500,
      //                                     color: Colors.black),
      //                               ),
      //                               SizedBox(
      //                                 width: 10,
      //                               ),
      //                               Text(
      //                                 '(8GB RAM, 128GB Storage)',
      //                                 style: TextStyle(color: Colors.brown),
      //                               ),
      //                               SizedBox(
      //                                 width: 135,
      //                               ),
      //                               Row(
      //                                 children: [
      //                                   Text('Quantaties'),
      //                                   SizedBox(
      //                                     width: 5,
      //                                   ),
      //                                   Container(
      //                                     color: Colors.white,
      //                                     width: 25,
      //                                     height: 25,
      //                                     child: Center(
      //                                         child: Obx(() => Text(
      //                                             cartcontroller.product
      //                                                 .where((e) =>
      //                                                     e.name == 'Lava')
      //                                                 .length
      //                                                 .toString()))),
      //                                   ),
      //                                 ],
      //                               )
      //                             ],
      //                           ),
      //                           SizedBox(height: 10),
      //                           Padding(
      //                             padding: const EdgeInsets.only(
      //                                 left: 18.0, top: 10.0),
      //                             child: Row(
      //                               children: [
      //                                 Text(
      //                                   '12,499 /-',
      //                                   style: TextStyle(
      //                                       color: Colors.red,
      //                                       fontSize: 20),
      //                                 ),
      //                                 SizedBox(
      //                                   width: 100,
      //                                 ),
      //                                 Container(
      //                                   width: 70,
      //                                   height: 30,
      //                                   decoration: BoxDecoration(
      //                                       color: Color.fromARGB(
      //                                           255, 255, 252, 75)),
      //                                   child: InkWell(
      //                                     onTap: () {
      //                                       var product2 = Product(
      //                                           brand: "Blaze",
      //                                           name: 'Lava',
      //                                           Quantity: 1,
      //                                           price: 79999.00);
      //                                       cartcontroller.product
      //                                           .add(product2);
      //                                       print(cartcontroller.product);
      //                                     },
      //                                     child: Center(
      //                                       child: Text(
      //                                         'Add Cart',
      //                                         style: TextStyle(
      //                                             color: Color.fromARGB(
      //                                                 255, 0, 0, 0),
      //                                             fontWeight:
      //                                                 FontWeight.bold),
      //                                       ),
      //                                     ),
      //                                   ),
      //                                 ),
      //                                 SizedBox(width: 5),
      //                                 Container(
      //                                   width: 70,
      //                                   height: 30,
      //                                   decoration: BoxDecoration(
      //                                       color: Color.fromARGB(
      //                                           255, 255, 252, 75)),
      //                                   child: InkWell(
      //                                     onTap: () {
      //                                       var product2 = cartcontroller
      //                                           .product
      //                                           .where(
      //                                               (e) => e.name == 'Lava')
      //                                           .first;
      //                                       cartcontroller.product
      //                                           .remove(product2);
      //                                     },
      //                                     child: Center(
      //                                       child: Text(
      //                                         'Remove',
      //                                         style: TextStyle(
      //                                             color: Color.fromARGB(
      //                                                 255, 0, 0, 0),
      //                                             fontWeight:
      //                                                 FontWeight.bold),
      //                                       ),
      //                                     ),
      //                                   ),
      //                                 ),
      //                               ],
      //                             ),
      //                           ),
      //                           Padding(
      //                             padding: const EdgeInsets.only(
      //                                 top: 3.0, left: 5),
      //                             child: Row(
      //                               mainAxisAlignment:
      //                                   MainAxisAlignment.end,
      //                               children: [
      //                                 TextButton(
      //                                     onPressed: () {
      //                                       Navigator.push(
      //                                         context,
      //                                         MaterialPageRoute(
      //                                             builder: (context) =>
      //                                                 Lava()),
      //                                       );
      //                                     },
      //                                     child:
      //                                         Text('About Of This Page?')),
      //                               ],
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(height: 10),
      //                   Container(
      //                     width: 600,
      //                     margin: EdgeInsets.all(10),
      //                     height: 160,
      //                     decoration: BoxDecoration(
      //                       color: Colors.green[50],
      //                       borderRadius: BorderRadius.circular(20),
      //                     ),
      //                     child: Padding(
      //                       padding: const EdgeInsets.all(20.0),
      //                       child: Column(
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Row(
      //                             children: [
      //                               Text(
      //                                 'OnePlus 7Pro',
      //                                 style: TextStyle(
      //                                     fontSize: 20,
      //                                     fontWeight: FontWeight.w500,
      //                                     color: Colors.black),
      //                               ),
      //                               SizedBox(
      //                                 width: 10,
      //                               ),
      //                               Text(
      //                                 '(8GB RAM, 128GB Storage)',
      //                                 style: TextStyle(color: Colors.brown),
      //                               ),
      //                               SizedBox(
      //                                 width: 138,
      //                               ),
      //                               Row(
      //                                 children: [
      //                                   Text('Quantaties'),
      //                                   SizedBox(
      //                                     width: 5,
      //                                   ),
      //                                   Container(
      //                                     color: Colors.white,
      //                                     width: 25,
      //                                     height: 25,
      //                                     child: Center(
      //                                         child: Obx(() => Text(
      //                                             cartcontroller.product
      //                                                 .where((p0) =>
      //                                                     p0.name ==
      //                                                     'oneplus')
      //                                                 .length
      //                                                 .toString()))),
      //                                   ),
      //                                 ],
      //                               )
      //                             ],
      //                           ),
      //                           SizedBox(height: 10),
      //                           Padding(
      //                             padding: const EdgeInsets.only(
      //                                 left: 18.0, top: 10.0),
      //                             child: Row(
      //                               children: [
      //                                 Text(
      //                                   '35,000 /-',
      //                                   style: TextStyle(
      //                                       color: Colors.red,
      //                                       fontSize: 20),
      //                                 ),
      //                                 SizedBox(
      //                                   width: 100,
      //                                 ),
      //                                 Container(
      //                                   width: 70,
      //                                   height: 30,
      //                                   decoration: BoxDecoration(
      //                                       color: Color.fromARGB(
      //                                           255, 255, 252, 75)),
      //                                   child: InkWell(
      //                                     onTap: () {
      //                                       var product3 = Product(
      //                                           brand: "7pro",
      //                                           name: 'oneplus',
      //                                           Quantity: 1,
      //                                           price: 79999.00);
      //                                       cartcontroller.product
      //                                           .add(product3);
      //                                       print(cartcontroller.product);
      //                                     },
      //                                     child: Center(
      //                                       child: Text(
      //                                         'Add Cart',
      //                                         style: TextStyle(
      //                                             color: Color.fromARGB(
      //                                                 255, 0, 0, 0),
      //                                             fontWeight:
      //                                                 FontWeight.bold),
      //                                       ),
      //                                     ),
      //                                   ),
      //                                 ),
      //                                 SizedBox(width: 5),
      //                                 Container(
      //                                   width: 70,
      //                                   height: 30,
      //                                   decoration: BoxDecoration(
      //                                       color: Color.fromARGB(
      //                                           255, 255, 252, 75)),
      //                                   child: GestureDetector(
      //                                     onTap: () {
      //                                       var product3 = cartcontroller
      //                                           .product
      //                                           .where((e) =>
      //                                               e.name == 'oneplus')
      //                                           .first;
      //                                       cartcontroller.product
      //                                           .remove(product3);
      //                                     },
      //                                     child: Center(
      //                                       child: Text(
      //                                         'Remove',
      //                                         style: TextStyle(
      //                                             color: Color.fromARGB(
      //                                                 255, 0, 0, 0),
      //                                             fontWeight:
      //                                                 FontWeight.bold),
      //                                       ),
      //                                     ),
      //                                   ),
      //                                 ),
      //                               ],
      //                             ),
      //                           ),
      //                           Padding(
      //                             padding: const EdgeInsets.only(
      //                                 top: 3.0, left: 5),
      //                             child: Row(
      //                               mainAxisAlignment:
      //                                   MainAxisAlignment.end,
      //                               children: [
      //                                 TextButton(
      //                                     onPressed: () {},
      //                                     child: TextButton(
      //                                         onPressed: () {
      //                                           Navigator.push(
      //                                             context,
      //                                             MaterialPageRoute(
      //                                                 builder: (context) =>
      //                                                     Oneplus()),
      //                                           );
      //                                         },
      //                                         child: Text(
      //                                             'About Of This Page?'))),
      //                               ],
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(height: 10),
      //                   Container(
      //                     width: 600,
      //                     margin: EdgeInsets.all(10),
      //                     height: 160,
      //                     decoration: BoxDecoration(
      //                       color: Colors.green[50],
      //                       borderRadius: BorderRadius.circular(20),
      //                     ),
      //                     child: Padding(
      //                       padding: const EdgeInsets.all(20.0),
      //                       child: Column(
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Row(
      //                             children: [
      //                               Text(
      //                                 'Xiaome Redmi8',
      //                                 style: TextStyle(
      //                                     fontSize: 20,
      //                                     fontWeight: FontWeight.w500,
      //                                     color: Colors.black),
      //                               ),
      //                               SizedBox(
      //                                 width: 10,
      //                               ),
      //                               Text(
      //                                 '(8GB RAM, 128GB Storage)',
      //                                 style: TextStyle(color: Colors.brown),
      //                               ),
      //                               SizedBox(
      //                                 width: 120,
      //                               ),
      //                               Row(
      //                                 children: [
      //                                   Text('Quantaties'),
      //                                   SizedBox(
      //                                     width: 5,
      //                                   ),
      //                                   Container(
      //                                     color: Colors.white,
      //                                     width: 25,
      //                                     height: 25,
      //                                     child: Center(
      //                                         child: Obx(() => Text(
      //                                             cartcontroller.product
      //                                                 .where((p0) =>
      //                                                     p0.name ==
      //                                                     'redmi8')
      //                                                 .length
      //                                                 .toString()))),
      //                                   ),
      //                                 ],
      //                               ),
      //                             ],
      //                           ),
      //                           SizedBox(height: 10),
      //                           Padding(
      //                             padding: const EdgeInsets.only(
      //                                 left: 18.0, top: 10.0),
      //                             child: Row(
      //                               children: [
      //                                 Text(
      //                                   ' 11,999/-',
      //                                   style: TextStyle(
      //                                       color: Colors.red,
      //                                       fontSize: 20),
      //                                 ),
      //                                 SizedBox(
      //                                   width: 100,
      //                                 ),
      //                                 Container(
      //                                   width: 70,
      //                                   height: 30,
      //                                   decoration: BoxDecoration(
      //                                       color: Color.fromARGB(
      //                                           255, 255, 252, 75)),
      //                                   child: InkWell(
      //                                     onTap: () {
      //                                       var product4 = Product(
      //                                           brand: "xiaome",
      //                                           name: 'redmi8',
      //                                           Quantity: 1,
      //                                           price: 79999.00);
      //                                       cartcontroller.product
      //                                           .add(product4);
      //                                       print(cartcontroller.product);
      //                                     },
      //                                     child: Center(
      //                                       child: Text(
      //                                         'Add Cart',
      //                                         style: TextStyle(
      //                                             color: Color.fromARGB(
      //                                                 255, 0, 0, 0),
      //                                             fontWeight:
      //                                                 FontWeight.bold),
      //                                       ),
      //                                     ),
      //                                   ),
      //                                 ),
      //                                 SizedBox(width: 5),
      //                                 Container(
      //                                   width: 70,
      //                                   height: 30,
      //                                   decoration: BoxDecoration(
      //                                       color: Color.fromARGB(
      //                                           255, 255, 252, 75)),
      //                                   child: GestureDetector(
      //                                     onTap: () {
      //                                       var product4 = cartcontroller
      //                                           .product
      //                                           .where((e) =>
      //                                               e.name == 'redmi8')
      //                                           .first;
      //                                       cartcontroller.product
      //                                           .remove(product4);
      //                                     },
      //                                     child: Center(
      //                                       child: Text(
      //                                         'Remove',
      //                                         style: TextStyle(
      //                                             color: Color.fromARGB(
      //                                                 255, 0, 0, 0),
      //                                             fontWeight:
      //                                                 FontWeight.bold),
      //                                       ),
      //                                     ),
      //                                   ),
      //                                 ),
      //                               ],
      //                             ),
      //                           ),
      //                           Padding(
      //                             padding: const EdgeInsets.only(
      //                                 top: 3.0, left: 5),
      //                             child: Row(
      //                               mainAxisAlignment:
      //                                   MainAxisAlignment.end,
      //                               children: [
      //                                 TextButton(
      //                                     onPressed: () {},
      //                                     child: TextButton(
      //                                         onPressed: () {
      //                                           Navigator.push(
      //                                             context,
      //                                             MaterialPageRoute(
      //                                                 builder: (context) =>
      //                                                     Redmi8()),
      //                                           );
      //                                         },
      //                                         child: Text(
      //                                             'About Of This Page?'))),
      //                               ],
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(height: 10),
      //                   Container(
      //                     width: 600,
      //                     margin: EdgeInsets.all(10),
      //                     height: 160,
      //                     decoration: BoxDecoration(
      //                       color: Colors.green[50],
      //                       borderRadius: BorderRadius.circular(20),
      //                     ),
      //                     child: Padding(
      //                       padding: const EdgeInsets.all(20.0),
      //                       child: Column(
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Row(
      //                             children: [
      //                               Text(
      //                                 'Poco F5',
      //                                 style: TextStyle(
      //                                     fontSize: 20,
      //                                     fontWeight: FontWeight.w500,
      //                                     color: Colors.black),
      //                               ),
      //                               SizedBox(
      //                                 width: 10,
      //                               ),
      //                               Text(
      //                                 '(8GB RAM, 64GB Storage)',
      //                                 style: TextStyle(color: Colors.brown),
      //                               ),
      //                               SizedBox(
      //                                 width: 190,
      //                               ),
      //                               Row(
      //                                 children: [
      //                                   Text('Quantaties'),
      //                                   SizedBox(
      //                                     width: 5,
      //                                   ),
      //                                   Container(
      //                                     color: Colors.white,
      //                                     width: 25,
      //                                     height: 25,
      //                                     child: Center(
      //                                         child: Obx(() => Text(
      //                                             cartcontroller.product
      //                                                 .where((p0) =>
      //                                                     p0.name == 'Poco')
      //                                                 .length
      //                                                 .toString()))),
      //                                   ),
      //                                 ],
      //                               ),
      //                             ],
      //                           ),
      //                           SizedBox(height: 10),
      //                           Padding(
      //                             padding: const EdgeInsets.only(
      //                                 left: 18.0, top: 10.0),
      //                             child: Row(
      //                               children: [
      //                                 Text(
      //                                   '15,999 /-',
      //                                   style: TextStyle(
      //                                       color: Colors.red,
      //                                       fontSize: 20),
      //                                 ),
      //                                 SizedBox(
      //                                   width: 100,
      //                                 ),
      //                                 Container(
      //                                   width: 70,
      //                                   height: 30,
      //                                   decoration: BoxDecoration(
      //                                       color: Color.fromARGB(
      //                                           255, 255, 252, 75)),
      //                                   child: InkWell(
      //                                     onTap: () {
      //                                       var product4 = Product(
      //                                           brand: "F5",
      //                                           name: 'Poco',
      //                                           Quantity: 1,
      //                                           price: 12000.00);
      //                                       cartcontroller.product
      //                                           .add(product4);
      //                                       print(cartcontroller.product);
      //                                     },
      //                                     child: Center(
      //                                       child: Text(
      //                                         'Add Cart',
      //                                         style: TextStyle(
      //                                             color: Color.fromARGB(
      //                                                 255, 0, 0, 0),
      //                                             fontWeight:
      //                                                 FontWeight.bold),
      //                                       ),
      //                                     ),
      //                                   ),
      //                                 ),
      //                                 SizedBox(width: 5),
      //                                 Container(
      //                                   width: 70,
      //                                   height: 30,
      //                                   decoration: BoxDecoration(
      //                                       color: Color.fromARGB(
      //                                           255, 255, 252, 75)),
      //                                   child: InkWell(
      //                                     onTap: () {
      //                                       var product5 = cartcontroller
      //                                           .product
      //                                           .where(
      //                                               (e) => e.name == 'Poco')
      //                                           .first;
      //                                       cartcontroller.product
      //                                           .remove(product5);
      //                                     },
      //                                     child: Center(
      //                                       child: Text(
      //                                         'Remove',
      //                                         style: TextStyle(
      //                                             color: Color.fromARGB(
      //                                                 255, 0, 0, 0),
      //                                             fontWeight:
      //                                                 FontWeight.bold),
      //                                       ),
      //                                     ),
      //                                   ),
      //                                 ),
      //                               ],
      //                             ),
      //                           ),
      //                           Padding(
      //                             padding: const EdgeInsets.only(
      //                                 top: 3.0, left: 5),
      //                             child: Row(
      //                               mainAxisAlignment:
      //                                   MainAxisAlignment.end,
      //                               children: [
      //                                 TextButton(
      //                                     onPressed: () {},
      //                                     child: TextButton(
      //                                         onPressed: () {
      //                                           Navigator.push(
      //                                             context,
      //                                             MaterialPageRoute(
      //                                                 builder: (context) =>
      //                                                     Poco()),
      //                                           );
      //                                         },
      //                                         child: Text(
      //                                             'About Of This Page?'))),
      //                               ],
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      // SizedBox(
      //   width: 30,
      // ),
      // TextButton(
      //   onPressed: () {},
      //   child: Text(
      //     "Go To Cart =>",
      //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      //   ),
      // ),
      //       Text(
      //         'GoToCart =>',
      //         style: TextStyle(
      //             fontSize: 15,
      //             fontWeight: FontWeight.w600,
      //             color: Colors.grey.shade400),
      //       ),

      //       GestureDetector(
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //                 builder: (context) => CartScreen(
      //                       title: 'Cart',
      //                     )),
      //           );
      //         },
      //         child: Center(
      //           child: Container(
      //             height: 500,
      //             width: 300,
      //             child: Image.network(
      //                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMF4DYh7dw1EugdUva81iiX5jJSU-dS9n8oQ&usqp=CAU'),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      //   backgroundColor: Colors.grey.shade100,