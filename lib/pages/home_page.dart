import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController urlImageController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Mis Recetas",
            style: GoogleFonts.roboto(),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(color: Colors.blueGrey),
                    controller: titleController,
                    decoration: InputDecoration(
                      hoverColor: Colors.yellow,
                      contentPadding: EdgeInsets.all(0),
                      hintText: "Ingrese el nombre de la receta",
                      focusColor: Colors.amber,
                      prefixIcon: Icon(Icons.title),
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    style: TextStyle(color: Colors.blueGrey),
                    controller: descriptionController,
                    decoration: InputDecoration(
                      hoverColor: Colors.yellow,
                      contentPadding: EdgeInsets.all(0),
                      hintText: "Ingrese la descripción de la receta",
                      focusColor: Colors.amber,
                      prefixIcon: Icon(Icons.description),
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    style: TextStyle(color: Colors.blueGrey),
                    controller: urlImageController,
                    decoration: InputDecoration(
                      hoverColor: Colors.yellow,
                      contentPadding: EdgeInsets.all(0),
                      hintText: "Ingrese el url de la imagen",
                      focusColor: Colors.amber,
                      prefixIcon: Icon(Icons.image),
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print(titleController.text);
                        print(descriptionController.text);
                        print(urlImageController.text);
                      },
                      child: Text("PRINTEAR"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
