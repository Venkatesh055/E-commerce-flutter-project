import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final int id;
  final String deviceName;
  final int Qty;
  final int RAM;
  final int ROM;
  final double totalPrice;

  CartPage({
    required this.id,
    required this.deviceName,
    required this.Qty,
    required this.RAM,
    required this.ROM,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    // You can use these values in your CartPage widget
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('ID: $id'),
            Text('Device Name: $deviceName'),
            Text('Quantity: $Qty'),
            Text('RAM: $RAM'),
            Text('ROM: $ROM'),
            Text('Total Price: $totalPrice'),
          ],
        ),
      ),
    );
  }
}
