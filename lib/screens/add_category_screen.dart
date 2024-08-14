import 'package:flutter/material.dart';
import 'package:prueba/services/categoria_service.dart';

class AddCategoryScreen extends StatelessWidget {
  final _claveController = TextEditingController();
  final _nombreController = TextEditingController();
  final ApiService apiService = ApiService(); // Instancia del servicio

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Añadir Categoría'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _claveController,
              decoration: InputDecoration(labelText: 'Clave'),
            ),
            TextField(
              controller: _nombreController,
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final clave = _claveController.text;
                final nombre = _nombreController.text;

                // Lógica para añadir la categoría llamando al servicio
                if (clave.isNotEmpty && nombre.isNotEmpty) {
                  try {
                    final response = await apiService.postCategoria({
                      'clave': clave,
                      'nombre': nombre,
                    });

                    if (response.statusCode == 201) {
                      
                      // Si la categoría se añadió exitosamente

                        ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Guardado con éxito')),
                      );
                      Navigator.of(context).pop({
                        'clave': clave,
                        'nombre': nombre,
                        
                      });

                    } else {
                      // Manejar el error si no se añadió la categoría
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Error al guardar la categoría')),
                      );
                    }
                  } catch (e) {
                    // Manejo de errores
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Error de conexión')),
                    );
                  }
                } else {
                  // Validación de campos vacíos
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Todos los campos son obligatorios')),
                  );
                }
              },
              child: Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
