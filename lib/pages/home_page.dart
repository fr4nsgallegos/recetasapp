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

                    //ESTILO MÁS GENERICO
                    // label: Text("Nombre"),
                    // icon: Icon(Icons.people),
                    // prefixIcon: Icon(Icons.share),
                    // suffix: Icon(Icons.abc),
                    // filled: true,
                    // fillColor: Color.fromARGB(255, 255, 23, 2),

                    //EL ESTILO QUE TOMA AL INICIO SIN QUE SE SELECCIONE EL TEXTFIELD
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.orange,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    //ESTILO QUE TOMA CUANDO SELECCIONO EL TEXTFIELD
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 10,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Ingrese la dirección de la institución",
                    label: Text("Dirección"),
                    icon: Icon(Icons.map),
                    filled: true,
                    fillColor: Colors.yellow,
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
