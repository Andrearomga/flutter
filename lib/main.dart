import 'package:flutter/material.dart';
import 'screens/home_screen.dart';  // Importa la nueva pantalla de inicio
import 'screens/categories_screen.dart';
import 'screens/add_category_screen.dart';
import 'screens/articulos_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestión de Categorías y Artículos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),  // Establece la pantalla principal como HomeScreen
      routes: {
        '/categories': (context) => CategoriesScreen(),
        '/add-category': (context) => AddCategoryScreen(),
       
        '/articulos': (context) => ArticulosScreen()
      },
    );
  }
}
