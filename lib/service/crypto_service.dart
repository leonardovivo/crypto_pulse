import 'dart:convert';
import 'package:http/http.dart' as http;

class CryptoService {
  Future<Map<String, dynamic>> fetchCryptoData(int id) async {
    final response = await http.get(
      Uri.parse('https://api.coinlore.net/api/ticker/?id=$id'),
    );

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data[0];
    } else {
      throw Exception('Failed to load crypto data');
    }
  }
}
