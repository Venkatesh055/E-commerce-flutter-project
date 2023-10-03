import 'package:document/controller/CartController.dart';
import 'package:document/globals.dart';
import 'package:document/modual/modual.dart';
import 'package:document/views/Products/Poco.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required String title});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final cartcontroller = Get.put(CartController());
  final id = 0, deviceName = "", RAM = 0, ROM = 0, totalPrice = 0.0, Qty = 0;

  double getTotalAmount() {
    var totalAmount = 0.0.obs;
    for (var product in cartcontroller.product) {
      totalAmount.value += product.price;
    }
    return totalAmount.value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          color: Colors.black.withOpacity(0.1),
          width: 300,
        ),
        Expanded(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Center(
                    child: Column(
                      children: [
                        Text('Samsung GalaxyS23',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 17,
                            )),
                        SizedBox(height: 20),
                        Text('Lava Blast 5G',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 17,
                            )),
                        SizedBox(height: 20),
                        Text('Oneplus 7Pro',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 17,
                            )),
                        SizedBox(height: 20),
                        Text('Poco F5',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 17,
                            )),
                        SizedBox(height: 20),
                        Text('RedmiNote8',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 17,
                            )),
                        SizedBox(height: 20),
                        Text(' Xioame Redmi10',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 17,
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          var product = Product(
                            id: id,
                            brand: "galaxyS23",
                            name: "samsung",
                            Quantity: productList.length,
                            price: 12499,
                            link:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfl78YBFwibBdoUK1QMUShCCpUQSjO-1B0hA&usqp=CAU',
                          );
                          cartcontroller.product.add(product);
                          print(cartcontroller.product);
                        },
                        icon: Icon(Icons.add),
                        color: Colors.green,
                        iconSize: 20,
                      ),
                      SizedBox(height: 5),
                      IconButton(
                        onPressed: () {
                          var product4 = Product(
                            id: 2,
                            brand: "Blast 5G",
                            name: 'Lava',
                            Quantity: productList.length,
                            price: 74999,
                            link:
                                'https://m.media-amazon.com/images/I/51CS5pPGiCL._AC_UL320_.jpg',
                          );
                          cartcontroller.product.add(product4);
                          print(cartcontroller.product);
                        },
                        icon: Icon(Icons.add),
                        color: Colors.green,
                        iconSize: 20,
                      ),
                      SizedBox(height: 5),
                      IconButton(
                        onPressed: () {
                          var product3 = Product(
                            id: 3,
                            brand: "7pro",
                            name: 'Oneplus',
                            Quantity: productList.length,
                            price: 10999,
                            link:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkTTibGfUFa4nqt6UZ3mZKmyFF8GC7tfskeg&usqp=CAU',
                          );
                          cartcontroller.product.add(product3);
                          print(cartcontroller.product);
                        },
                        icon: Icon(Icons.add),
                        color: Colors.green,
                        iconSize: 20,
                      ),
                      SizedBox(height: 5),
                      IconButton(
                        onPressed: () {
                          var product1 = Product(
                            id: 4,
                            brand: "F5",
                            name: 'Poco',
                            Quantity: productList.length,
                            price: 10550,
                            link:
                                'https://img-prd-pim.poorvika.com/cdn-cgi/image/width=500,height=500,quality=75/product/Realme-11-pro-plus-5g-astral-black-256gb-12gb-ram-Front-Back-View.png',
                          );
                          cartcontroller.product.add(product1);
                          print(cartcontroller.product);
                        },
                        icon: Icon(Icons.add),
                        color: Colors.green,
                        iconSize: 20,
                      ),
                      SizedBox(height: 5),
                      IconButton(
                        onPressed: () {
                          var product5 = Product(
                            id: 5,
                            brand: "Xioame",
                            name: 'RedmiNote8',
                            Quantity: productList.length,
                            price: 40000,
                            link:
                                'https://m.media-amazon.com/images/I/71BiCb7N5YL._SX679_.jpg',
                          );
                          cartcontroller.product.add(product5);
                          print(cartcontroller.product);
                        },
                        icon: Icon(Icons.add),
                        color: Colors.green,
                        iconSize: 20,
                      ),
                      SizedBox(height: 5),
                      IconButton(
                        onPressed: () {
                          var product2 = Product(
                            id: 6,
                            brand: "Xioame",
                            name: 'Redmi10',
                            Quantity: productList.length,
                            price: 15099,
                            link:
                                'https://m.media-amazon.com/images/I/71BiCb7N5YL._SX679_.jpg',
                          );
                          cartcontroller.product.add(product2);
                          print(cartcontroller.product);
                        },
                        icon: Icon(Icons.add),
                        color: Colors.green,
                        iconSize: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          var product = cartcontroller.product
                              .where((e) => e.id == id)
                              .first;
                          cartcontroller.product.remove(product);
                          print('sumbit');
                        },
                        icon: Icon(Icons.remove),
                        color: Colors.red,
                        iconSize: 20,
                      ),
                      SizedBox(height: 5),
                      IconButton(
                        onPressed: () {
                          var product1 = cartcontroller.product
                              .where((e) => e.name == 'redmi8')
                              .first;
                          cartcontroller.product.remove(product1);
                          print('sumbit');
                        },
                        icon: Icon(Icons.remove),
                        color: Colors.red,
                        iconSize: 20,
                      ),
                      SizedBox(height: 5),
                      IconButton(
                        onPressed: () {
                          var product2 = cartcontroller.product
                              .where((e) => e.name == 'oneplus')
                              .first;
                          cartcontroller.product.remove(product2);
                          print('sumbit');
                        },
                        icon: Icon(Icons.remove),
                        color: Colors.red,
                        iconSize: 20,
                      ),
                      SizedBox(height: 5),
                      IconButton(
                        onPressed: () {
                          var product3 = cartcontroller.product
                              .where((e) => e.name == 'redmi10')
                              .first;
                          cartcontroller.product.remove(product3);
                          print('sumbit');
                        },
                        icon: Icon(Icons.remove),
                        color: Colors.red,
                        iconSize: 20,
                      ),
                      SizedBox(height: 5),
                      IconButton(
                        onPressed: () {
                          var product4 = cartcontroller.product
                              .where((e) => e.name == 'Poco')
                              .first;
                          cartcontroller.product.remove(product4);
                          print('sumbit');
                        },
                        icon: Icon(Icons.remove),
                        color: Colors.red,
                        iconSize: 20,
                      ),
                      SizedBox(height: 5),
                      IconButton(
                        onPressed: () {
                          var product = cartcontroller.product
                              .where((e) => e.name == 'Lava')
                              .first;
                          cartcontroller.product.remove(product);
                          print('sumbit');
                        },
                        icon: Icon(Icons.remove),
                        color: Colors.red,
                        iconSize: 20,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width: 5,
                ),
                // Column(
                //   children: [
                //     TextFormField(
                //       d
                //ecoration: InputDecoration(
                //           hintText: 'Quantity',
                //           border: OutlineInputBorder(
                //               borderRadius: BorderRadius.circular(20))),
                //     )
                //   ],
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Center(
                            child: Obx(() => Text(cartcontroller.product
                                .where((p0) => p0.name == 'samsung')
                                .length
                                .toString()))),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                          child: Obx(() => Text(cartcontroller.product
                              .where((p0) => p0.name == 'redmi8')
                              .length
                              .toString()))),
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                          child: Obx(() => Text(cartcontroller.product
                              .where((p0) => p0.name == 'oneplus')
                              .length
                              .toString()))),
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                          child: Obx(() => Text(cartcontroller.product
                              .where((p0) => p0.name == 'redmi10')
                              .length
                              .toString()))),
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                          child: Obx(() => Text(cartcontroller.product
                              .where((p0) => p0.name == 'Poco')
                              .length
                              .toString()))),
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                          child: Obx(() => Text(cartcontroller.product
                              .where((p0) => p0.name == 'Lava')
                              .length
                              .toString()))),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 100,
                            height: 25,
                            color: Colors.grey.withOpacity(0.1),
                            child: Text(
                              'Total Amount',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(width: 30),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Text(
                        '*',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Text(
                        '*',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Text(
                        '*',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Text(
                        '*',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Text(
                        '*',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Text(
                        '*',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Text(
                        '12499',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      SizedBox(height: 25),
                      Text(
                        '74999',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        '10999',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      SizedBox(height: 25),
                      Text(
                        '10550',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      SizedBox(height: 25),
                      Text(
                        '40000',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      SizedBox(height: 25),
                      Text(
                        '15099',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      SizedBox(height: 20),
                      Obx(
                        () => Text('${getTotalAmount().toStringAsFixed(2)}'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.1),
          width: 300,
        ),
      ],
    ));
  }
}
