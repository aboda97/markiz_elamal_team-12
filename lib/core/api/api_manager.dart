import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../utils/global_variables.dart';

class ApiManager {
  static Dio dio = Dio();

static  dynamic putData(String endPoint,Map<String,dynamic>data, {String ln="en"})async {
  Uri url = Uri.http(basUrl,endPoint, {"ln" : ln});
  print(data);
  print("11111111111111111111111111111111111111111111111111111");
  http.Response response = await http.put(url, body: data,headers: {"authorization":token});
  print(response.body);
  print("00000000000000000000000000000000000000000000000000");
  var jsonData = jsonDecode(response.body);
  return jsonData;
}
//   static Future<Response> putData(String endPoint, Map<String, dynamic> data,
//       {String ln = "en"}) async {
//     // Uri url = Uri.http(basUrl,endPoint, {"ln" : ln});
//     print(data);
//     print("11111111111111111111111111111111111111111111111111111");
//     Response response = await dio.put("http://$basUrl/$endPoint",
//         data: data, options: Options(headers: {"authorization": token}));
//     print(response);
//     print("00000000000000000000000000000000000000000000000000");
//     // var jsonData = jsonDecode(response.body);
//     return response;
//   }

  static dynamic getData(String endPoint, {String ln = "en"}) async {
    Uri url = Uri.http(basUrl, endPoint, {"ln": ln});
    http.Response response =
        await http.get(url, headers: {"authorization": token});
    print(response.body);
    var jsonData = jsonDecode(response.body);
    return jsonData;
  }
}
