class Categoria { 
  //Atributos
  String clave;
  String nombre;
  DateTime fechaCreado;
  bool activo = true;


  // Constructor
  Categoria({
    required this.clave,
    required this.nombre,
    required this.fechaCreado,
    this.activo = true,  
    
  });


  // Método para convertir de JSON a Categoria
  factory Categoria.fromJson(Map<String, dynamic> json) {
    return Categoria(
      clave: json['clave'] as String,
      nombre: json['nombre'] as String,
      fechaCreado: DateTime.parse(json['fechaCreado'] as String),
      activo: json['activo'] as bool,
    );
  }

  // Método para convertir de Categoria a JSON
  Map<String, dynamic> toJson() {
    return {
      'clave': clave,
      'nombre': nombre,
      'fechaCreado': fechaCreado.toIso8601String(),
      'activo': activo,
    };
  }
}
