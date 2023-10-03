import 'package:flutter/material.dart';
import 'package:get/get.dart';

class listing extends StatelessWidget {
  final Icon leading;
  final String? title;
  final Function? OnTap;
  final double elevation;

  const listing({
    super.key,
    required this.leading,
    required this.title,
    this.OnTap,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: elevation,
      child: ListTile(
        leading: leading,
        title: Text(''),
        onTap: () {},
      ),
    );
  }
}
