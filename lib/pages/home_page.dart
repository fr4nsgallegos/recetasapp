import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController direccionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Mis Recetasss",
            style: GoogleFonts.roboto(
              fontSize: 35,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                TextField(
                  controller: nombreController,
                  // onChanged: (String value) {
                  //   print(nombreController.text);
                  // },

                  //PROPIEDADES DEL CURSOS
                  cursorColor: Colors.black,
                  cursorHeight: 10,
                  cursorWidth: 10,
                  cursorRadius: Radius.circular(50),
                  // showCursor: false,//HABILITA O DESHABILITA EL CURSOS
                  // enabled: false, //deshabilita el text field
                  decoration: InputDecoration(
                    helperText: "hola mundo ",
                    helperStyle:
                        TextStyle(color: Colors.blueGrey, fontSize: 20),
                    hoverColor: Colors.yellow,
                    contentPadding: EdgeInsets.all(0),
                    hintText: "Ingrese el nombre de la institución",
                    hintStyle: TextStyle(color: Colors.pink, fontSize: 15),
                    hintMaxLines: 2,

                    // ESTILO MÁS GENERICO
                    label: Text("Nombre"),
                    labelStyle: GoogleFonts.arima(),
                    icon: SvgPicture.asset(
                      "assets/icons-svg/user-check.svg",
                      colorFilter: const ColorFilter.mode(
                        Color(0xffFF6C37),
                        BlendMode.srcIn,
                      ),
                    ),
                    prefixIcon: Icon(Icons.share),
                    suffix: Icon(Icons.abc),
                    filled: true,
                    fillColor: Colors.orange,
                    // focusColor: Colors.amber,

                    //EL ESTILO QUE TOMA AL INICIO SIN QUE SE SELECCIONE EL TEXTFIELD
                    enabledBorder: OutlineInputBorder(
                      // borderSide: BorderSide(
                      //   color: Colors.orange,
                      //   width: 5,
                      //   style: BorderStyle.solid,
                      // ),
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    //ESTILO QUE TOMA CUANDO SELECCIONO EL TEXTFIELD
                    focusedBorder: OutlineInputBorder(
                      // borderSide: BorderSide(
                      //   color: Colors.black,
                      //   width: 10,
                      // ),
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  controller: direccionController,
                  // enabled: false,//deshabilita el text field
                  decoration: InputDecoration(
                    hintText: "Ingrese la dirección de la institución",
                    label: Text("Dirección"),
                    icon: Icon(Icons.map),
                    filled: true,
                    fillColor: Colors.yellow,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      print(direccionController.text);
                      print(nombreController.text);
                    },
                    child: Text("PRINTEAR"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
