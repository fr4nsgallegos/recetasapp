import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:recetasapp/pages/home_page.dart';

class RecipePage extends StatelessWidget {
  String title;
  RecipePage({required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("retroceder"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            child: Text("avanzar"),
          ),
        ],
      ),
    );
  }
}
