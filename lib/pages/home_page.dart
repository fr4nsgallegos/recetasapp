import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recetasapp/models/recipe_model.dart';
import 'package:recetasapp/widgets/card_1.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController urlImageController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  RecipeModel bandejaPaisa = RecipeModel(
    title: "Bandeja Paisa",
    description:
        "La bandeja paisa es uno de los platos más representativos de Colombia y la insignia de la gastronomía antioqueña, y es propio de esta región, Antioquia.Una de las características fundamentales de este plato es su abundancia, tanto en cantidad como en variedad de alimentos, de tal modo que la bandeja paisa completa solo cabe servirla en platos grandes llamados bandejas.",
    image:
        "https://ichef.bbci.co.uk/news/640/cpsprodpb/134E3/production/_105057097_a226d870-cc5f-4043-9f4b-d452b75cc280.jpg",
  );

  List<RecipeModel> recipes = [];

  @override
  void initState() {
    super.initState();
    recipes = [
      bandejaPaisa,
      RecipeModel(
        title: "Lomo Saltado",
        description:
            "El lomo saltado es un plato sumamente popular de la llamada cocina fusión que combina la tradición de la gastronomía china de saltear los alimentos con ingredientes peruanos como ají amarillo, cilantro y tomate. Este suculento plato fuerte siempre se acompaña con arroz blanco y papas fritas.",
        image:
            "https://previews.123rf.com/images/lenyvavsha/lenyvavsha1511/lenyvavsha151100492/48709327-la-cocina-peruana-hecha-en-casa-lomo-saltado-en-una-sartén-vertical-del-primer.jpg",
      ),
    ];
  }

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
                      RecipeModel _recipe = RecipeModel(
                        title: titleController.text,
                        description: descriptionController.text,
                        image: urlImageController.text,
                      );
                      recipes.add(_recipe);
                      titleController.clear();
                      descriptionController.clear();
                      urlImageController.clear();
                      setState(() {});
                    },
                    child: Text("Agregar"),
                  ),
                  ...recipes
                      .map(
                        (RecipeModel receta) => Card1(
                          recipeModel: receta,
                        ),
                      )
                      .toList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
