import 'package:flutter/material.dart';
import '../models/articulo.dart';
import '../widgets/articulo_card.dart';

class ArticulosScreen extends StatelessWidget {
  final List<Articulo> articulos = [
    // Aquí puedes añadir artículos predefinidos si lo deseas.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artículos'),
      ),
      body: ListView.builder(
        itemCount: articulos.length,
        itemBuilder: (ctx, index) {
          return ArticuloCard(articulo: articulos[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FAB presionado"); // Para verificar que se ejecuta
          Navigator.of(context).pushNamed('/add-articulo');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
