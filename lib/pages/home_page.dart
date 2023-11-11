import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int notas = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Ingrese el nombre de la institución",
                    // label: Text("Nombre"),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Ingrese la dirección de la institución",
                    label: Text("Dirección"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
