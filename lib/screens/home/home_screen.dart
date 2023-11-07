// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uni_toni_test/screens/home/widgets/custom_text_field.dart';
import 'package:uni_toni_test/screens/home/widgets/search_result_list.dart';

import '../../controller/news_controller.dart';
import '../../utils/size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  News_Controller news_controller = Get.put(News_Controller());
  TextEditingController field_One_Controller = TextEditingController();
  TextEditingController field_Two_Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Uni Toni Test',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              CustomTextField(
                controller: field_One_Controller,
                onChanged: (text1) => news_controller.getNews(text1),
                color: Colors.red.shade200,
                hintText: 'Field_One',
              ),
              CustomTextField(
                onChanged: (text2) => news_controller.getNews(text2),
                controller: field_Two_Controller,
                color: Colors.green.shade200,
                hintText: 'Field_Two',
              ),
              GetBuilder<News_Controller>(
                builder: (controller) => SizedBox(
                  height: getPercentScreenHeight(30),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemCount: controller.newsListOne.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: getPercentScreenWidth(90),
                          height: getPercentScreenHeight(8),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.red.shade200,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            controller.newsListOne[index]['source']['title'] ??
                                '',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              GetBuilder<News_Controller>(
                builder: (controller) => SizedBox(
                  height: getPercentScreenHeight(30),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemCount: controller.newsListTwo.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: getPercentScreenWidth(90),
                          height: getPercentScreenHeight(8),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            controller.newsListTwo[index]['source']['title'] ??
                                '',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
