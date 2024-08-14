import 'package:flutter/material.dart';
import '../models/categoria.dart';
import '../widgets/category_card.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Categoria> categories = [
    

    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorías'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (ctx, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FAB presionado"); // Para verificar que se ejecuta
          Navigator.of(context).pushNamed('/add-category');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
