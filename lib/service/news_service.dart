import 'package:dio/dio.dart';

import '../api/api.dart';

class NewsService {
  static NewsService? _instance;

  var dio = Dio();
  factory NewsService() => _instance ??= NewsService._();

  NewsService._();

  Future<dynamic> fetchNews(String text) async {
    try {
      var res = await Api().dio.get(
            'everything?q=$text&from=2023-10-07&sortBy=publishedAt&apiKey=c4926840065c42c6b10f1c91ef22688b',
          );

      if (res.statusCode == 200) {
        return res.data;
      }
    } catch (e) {
      if (e is DioException) {
        if (e.response?.statusCode != 200) {
          print('********** error*************${e.response}');
        }
      } else {
        print('errorrrrrr');
      }
    }
  }
}
