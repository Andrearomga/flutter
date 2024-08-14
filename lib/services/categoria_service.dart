import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "http://192.168.100.9:3000";

  Future<http.Response> getCategoria(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/categoria/$id'));
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to load category');
    }
  }

  Future<http.Response> postCategoria(Map<String, dynamic> data) async {
    final response = await http.post(
     
      
      Uri.parse('$baseUrl/categoria/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );
    if (response.statusCode == 201) {
      return response;
    } else {
      throw Exception('Failed to create category');
    }
  }

  // Añade más métodos para otras operaciones como PUT, DELETE, etc.
}
