//este es más eficaz
import 'package:flutter/material.dart';
import 'package:recetasapp/models/recipe_model.dart';

class Card1 extends StatefulWidget {
  RecipeModel recipeModel;

  Card1({
    required this.recipeModel,
  });

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
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
              widget.recipeModel.image,
              height: 240,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            widget.recipeModel.title,
            maxLines: 2,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.recipeModel.description,
              maxLines: 3,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
