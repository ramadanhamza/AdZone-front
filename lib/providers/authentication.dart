import 'package:dio/dio.dart';
import 'package:login_signup_ui_starter/models/user.dart';
import 'package:login_signup_ui_starter/utils/constants.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthenticationApi {
  final Dio _dio = new Dio();
  final storage = new FlutterSecureStorage();

  Future<String> login(String email, String password) async {
    try {
      final response = await _dio.post(SERVER_URL + '/auth/signin',
          data: {"email": email, "password": password});

      if (response.statusCode == 200) {
        final token = response.data['token'];
        storage.write(key: 'token', value: token);
        return "Login Successful";
      } else {
        throw Exception(response.data['msg']);
      }
    } catch (e) {
      print(e);
      return e.toString();
    }
  }

  Future<String> signup(String first_name, String last_name, String email,
      String password) async {
    try {
      final response = await _dio.post(SERVER_URL + '/auth/signup', data: {
        "first_name": first_name,
        "last_name": last_name,
        "email": email,
        "password": password
      });

      if (response.statusCode == 200) {
        return response.data['msg'];
      } else {
        throw Exception(response.data['msg']);
      }
    } catch (e) {
      print(e);
      return e.toString();
    }
  }

  Future<String> getToken() async {
    try {
      final token = await storage.read(key: 'token');
      return token;
    } catch (e) {
      print(e);
      return e.toString();
    }
  }

  Future<User> getUser() async {
    try {
      final token = await storage.read(key: 'token');
      final response = await _dio.get(SERVER_URL + '/auth/user',
          options: Options(headers: {'Authorization': token}));
      if (response.statusCode == 200) {
        final user = User.fromJson(response.data);
        return user;
      } else {
        throw Exception(response.data['msg']);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<String> logout() async {
    try {
      storage.delete(key: 'token');
      return "Logout Successful";
    } catch (e) {
      print(e);
      return e.toString();
    }
  }

  Future<String> verifyAccount(String code) async {
    try {
      final response = await _dio.get(SERVER_URL + '/auth/verify/' + code);

      if (response.statusCode == 200) {
        return response.data['msg'];
      } else {
        throw Exception(response.data['msg']);
      }
    } catch (e) {
      print(e);
      return e.toString();
    }
  }
}