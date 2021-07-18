import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class Api {
  final String urllink;
  final Map data;
  Api({@required this.data, @required this.urllink});
  Dio dio() {
    return Dio(BaseOptions(headers: {
      'Authorization': 'B ....',
    }));
  }

  void get({
    Function() beforesend,
    Function(dynamic data) onsuccess,
    Function(dynamic error) onError,
  }) {
    dio().get(this.urllink, queryParameters: this.data).then((value) {
      if (onsuccess != null) onsuccess(value.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }
}
