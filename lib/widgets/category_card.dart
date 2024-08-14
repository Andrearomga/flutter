import 'package:flutter/material.dart';
import '../models/categoria.dart';

class CategoryCard extends StatelessWidget {
  final Categoria category;

  CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(category.nombre),
        subtitle: Text('Clave: ${category.clave}'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                // Editar categoría
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Eliminar categoría
              },
            ),
          ],
        ),
      ),
    );
  }
}
