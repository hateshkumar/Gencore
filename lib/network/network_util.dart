import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:gencore/model/result_data.dart';
import 'package:http/http.dart' as http;

class NetworkUtil {
  //----------------------------------------------------------- Singleton-Instance ------------------------------------------------------------------
  // Singleton Instance
  static NetworkUtil _instance = new NetworkUtil.internal();

  http.Client _client = new http.Client();


  close() {
    _client.close();
    _client = new http.Client();
  }

  NetworkUtil.internal();

  factory NetworkUtil() => _instance;

  //------------------------------------------------------------- Variables ---------------------------------------------------------------------------
  // JsonDecoder object
  final JsonDecoder _decoder = JsonDecoder();

  Future<ResultData> get({required String url, Map? headers}) async {
    ResultData repositoryResponse = ResultData();
    repositoryResponse.success = false;
    repositoryResponse.data = null;

    print('******* Get request URL *********');
    print(url);
    print('******* Get request headers *********');
    print(headers.toString());

    try {
      var response = await _client.get(Uri.parse(url),
          headers: headers as Map<String, String>?);
      final String res = response.body;
      var data = _decoder.convert(res);

      repositoryResponse.success =
          repositoryResponse.code != 200 ? false : true;
      repositoryResponse.data = data;
      return repositoryResponse;
    } on SocketException {
      print("********Socket Exception ");
      repositoryResponse.code = 1;
      repositoryResponse.msg =
          "No Internet Available.\nPlease check your internet connection & Try Again!";
      return repositoryResponse;
    } on FormatException {
      print("********Format Exception ");
      repositoryResponse.code = 2;
      repositoryResponse.msg = "Something went wrong, Please try again.";
      return repositoryResponse;
    } on HttpException {
      print("********Http Exception ");
      repositoryResponse.code = 3;
      repositoryResponse.msg = "Something went wrong, Please try again.";
      return repositoryResponse;
    } catch (e) {
      print("********Unknown Exception ${e.toString()}");
      repositoryResponse.code = 4;
      repositoryResponse.msg =
          "Something went wrong, Our team has been notified";
      return repositoryResponse;
    }
  }

}
