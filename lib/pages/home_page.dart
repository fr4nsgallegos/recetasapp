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
                    child: Text("PRINTEAR"),
                  ),
                  RecipeItem(),
                  RecipeItem(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//este es más eficaz
class RecipeItem extends StatefulWidget {
  @override
  State<RecipeItem> createState() => _RecipeItemState();
}

class _RecipeItemState extends State<RecipeItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      // color: Colors.red,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: Offset(5, 5),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.network(
              "https://ichef.bbci.co.uk/news/640/cpsprodpb/134E3/production/_105057097_a226d870-cc5f-4043-9f4b-d452b75cc280.jpg",
              height: 240,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Bandeja paisa",
            maxLines: 2,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "La bandeja paisa es uno de los platos más representativos de Colombia y la insignia de la gastronomía antioqueña, y es propio de esta región, Antioquia.Una de las características fundamentales de este plato es su abundancia, tanto en cantidad como en variedad de alimentos, de tal modo que la bandeja paisa completa solo cabe servirla en platos grandes llamados bandejas.",
              maxLines: 3,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //propiedad solo de STATEFULLWIDGET (SETSTATE)
              setState(() {});
            },
            child: Text("boton"),
          )
        ],
      ),
    );
  }
}

//es una función
Widget recipeItem() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 8),
    padding: EdgeInsets.all(16),
    // color: Colors.red,
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(18),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          offset: Offset(5, 5),
          blurRadius: 8,
        ),
      ],
    ),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.network(
            "https://ichef.bbci.co.uk/news/640/cpsprodpb/134E3/production/_105057097_a226d870-cc5f-4043-9f4b-d452b75cc280.jpg",
            height: 240,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "Bandeja paisa",
          maxLines: 2,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "La bandeja paisa es uno de los platos más representativos de Colombia y la insignia de la gastronomía antioqueña, y es propio de esta región, Antioquia.Una de las características fundamentales de este plato es su abundancia, tanto en cantidad como en variedad de alimentos, de tal modo que la bandeja paisa completa solo cabe servirla en platos grandes llamados bandejas.",
            maxLines: 3,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14),
          ),
        )
      ],
    ),
  );
}
