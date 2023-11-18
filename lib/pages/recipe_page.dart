import 'dart:ffi';

import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  String title;
  RecipePage({required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column());
  }
}
