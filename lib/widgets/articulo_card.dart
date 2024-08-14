import 'package:flutter/material.dart';
import '../models/articulo.dart';

class ArticuloCard extends StatelessWidget {
  final Articulo articulo;

  ArticuloCard({required this.articulo});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(articulo.nombre),
        subtitle: Text('Clave: ${articulo.clave}'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                // Editar artículo
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Eliminar artículo
              },
            ),
          ],
        ),
      ),
    );
  }
}
