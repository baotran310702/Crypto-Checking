import 'package:dio/dio.dart';

class RemoteUserDataSource {
  final Dio client;
  RemoteUserDataSource(this.client);

  Future<Map<String, dynamic>> getUserFromApi(int userId) async {
    final response = await client.get('https://example.com/users/$userId');

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("Failed to fetch user");
    }
  }
}
