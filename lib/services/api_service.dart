import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:robots_rolodex/models/robot.dart';

class ApiService {
  var dio = Dio();
  static const url = 'https://jsonplaceholder.typicode.com/users';

  fetchRobots() async {
    Response response;
    try {
      response = await dio.get(url);
      if (response.statusCode == 200) {
        return response.data.map((d) => Robot.fromMap(d)).toList();
      }
    } catch (e) {
      if (kDebugMode) print(e);
    } finally {
      dio.close();
    }
  }
}
