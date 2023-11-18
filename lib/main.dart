import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recetasapp/pages/home_page.dart';
import 'package:recetasapp/pages/recipe_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: RecipePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.arimaTextTheme(),
      ),
    ),
  );
}

class PruebaScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Prueba Screen"),
        ),
        body: Column(
          children: [
            Text("LOS CONTAINERS SON: "),
            Text("LOS CONTAINERS SON: "),
            Text("LOS CONTAINERS SON: "),
            Text("LOS CONTAINERS SON: "),
            Text("LOS CONTAINERS SON: "),
            Text("LOS CONTAINERS SON: "),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              // width: double.infinity,
              child: ListView.builder(
                //SCROLL EN HORIZONTAL
                // scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    height: 200,
                    width: 200,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        index.toString(),
                      ),
                    ),
                  );
                },
              ),
            ),
            Text("mas hijos"),
            Text("mas hijos"),
            Text("mas hijos"),
            Text("mas hijos"),
            Text("mas hijos"),
          ],
        ),
      ),
    );
  }
}
