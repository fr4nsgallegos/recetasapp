import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Page aquiiiiii"),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(),
                TextField(),
                TextField(),
                TextField(),
                TextField(),
                TextField(),
                TextField(),
                TextField(),
                TextField(),
                TextField(),
                TextField(),
                TextField(),
                TextField(),
                TextField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
