import 'package:dio/dio.dart';

import '../provider/get_method_provider.dart';

class DioClient {
  final Dio _dio = Dio();

  final _baseUrl = 'https://reqres.in/api';

// TODO: Add methods
  Future<GetMethodProvider?> getUser({required String id}) async {
    GetMethodProvider? user;
    try {
      Response userData = await _dio.get(_baseUrl + '/users/$id');
      print('User Info: ${userData.data}');
      user = GetMethodProvider.fromJson(userData.data);
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
      } else {
        print('Error sending request!');
      }
    }
    return user;
  }
}