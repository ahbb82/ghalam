import 'package:dio/dio.dart';
import 'package:univercity/Public/public.dart';

class ApiService {
  static final Dio dio = Dio();

  static get(String url)async {
    var res = await dio.get(baseUrl + url);
    return res;
  }

  static post(String url,Map? body) async {
    var res = await dio.post(baseUrl + url,data: body);
    return res;
  }
}

