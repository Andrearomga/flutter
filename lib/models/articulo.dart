import 'package:prueba/models/precio.dart';

import 'categoria.dart';

class Articulo {
  //Atributos
  String clave;
  String nombre;
  Categoria categoria;
  List<Precio> precios;
  bool activo = true;


  Articulo ({
    required this.clave,
    required this.nombre,
    required this.categoria,   
    required this.precios, 
    this.activo = true,
    
  });
}

