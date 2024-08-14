import 'package:flutter/material.dart';
import 'categories_screen.dart'; 

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestión de Categorías y Artículos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/categories');
              },
              child: Text('Categorías'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Redirige a la pantalla de Artículos cuando esté disponible
                Navigator.of(context).pushNamed('/articulos');
              },
              child: Text('Artículos'),
            ),
          ],
        ),
      ),
    );
  }
}
