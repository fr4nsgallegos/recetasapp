import 'dart:ffi';

import 'package:flutter/material.dart';

class RecipePage extends StatefulWidget {
  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  int valor = 50;
  int valor2 = 100;
  // int altura = 100;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // altura = altura * valor;
  }

  @override
  Widget build(BuildContext context) {
    // altura = altura * valor;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.yellow,
              width: 100,
              height: 100,
              child: GestureDetector(
                onDoubleTap: () {
                  print("me gusta");
                },
                onTap: () {
                  valor++;
                  setState(() {});
                  print(valor);
                },
                child: Text(
                  valor.toString(),
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            Text(
              valor2.toString(),
              style: TextStyle(fontSize: 50),
            ),
            Container(
              height: 50,
              width: valor.toDouble(),
              color: Colors.red,
            ),
            ElevatedButton(
              onPressed: () {
                valor++;
                setState(() {});
                print(valor);
              },
              child: Text("apretar con set"),
            ),
            ElevatedButton(
              onPressed: () {
                valor2 = 160;
                // setState(() {});
                print(valor);
              },
              child: Text("apretar sin"),
            )
          ],
        ),
      ),
    );
  }
}
