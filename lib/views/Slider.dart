import 'package:carousel_slider/carousel_slider.dart';
import 'package:document/controller/CartController.dart';
import 'package:document/globals.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modual/modual.dart';
import 'data/Data.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController());
    List<Product> productList = controller.showProduct;

    return (Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: CarouselSlider.builder(
                itemCount: controller.showProduct.length,
                itemBuilder: (context, i, id) {
                  Product product = controller.showProduct[i];
                  return GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(imageList[i],
                                height: 230, width: 250, fit: BoxFit.cover),
                          ),
                          Text(
                            '${product.name}',
                            style: TextStyle(
                                color: Colors.amber[150],
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  );
                },
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  height: 300,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  reverse: false,
                  aspectRatio: 5.0,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
