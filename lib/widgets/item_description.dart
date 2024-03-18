import 'package:flutter/material.dart';

class ItemDescriptionScreen extends StatefulWidget {
  const ItemDescriptionScreen(
      {super.key, required this.imgUrls, required this.title});
  final String imgUrls, title;
  @override
  State<ItemDescriptionScreen> createState() => _ItemDescriptionScreenState();
}

class _ItemDescriptionScreenState extends State<ItemDescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
