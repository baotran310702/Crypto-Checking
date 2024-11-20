class LocalUserDataSource {
  Future<Map<String, dynamic>> getUserFromLocal(int userId) async {
    // Simulated local data
    final data = {
      1: {"id": "1", "name": "John Doe"},
      2: {"id": "2", "name": "Jane Smith"},
    };
    if (data.containsKey(userId)) {
      return Future.value(data[userId]!);
    } else {
      throw Exception("User not found");
    }
  }
}
