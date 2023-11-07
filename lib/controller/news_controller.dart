// ignore_for_file: camel_case_types

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:uni_toni_test/service/news_service.dart';

import 'loader_controller.dart';

class News_Controller extends GetxController {
  final loaderController = Get.put(LoaderController());

  List<dynamic> newsListOne = [];
  List<dynamic> newsListTwo = [];
  @override
  void onInit() {
    super.onInit();
  }

  Future<dynamic> getNews(String searchText) async {
    loaderController.loading(true);

    try {
      var res = await NewsService().fetchNews(searchText);

      newsListOne = res['articles'];
      newsListTwo = res['articles'];
      if (kDebugMode) {
        print('newsList is $newsListOne');
      }
    } catch (e) {
      if (e is DioException) {
        log(e.toString());
      } else {
        if (kDebugMode) {
          print('errorrrrrr is $e');
        }
      }
    }
    update();
    loaderController.loading(false);
  }
}
