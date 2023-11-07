
// ignore_for_file: camel_case_types, must_be_immutable, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uni_toni_test/controller/news_controller.dart';
=======
// ignore_for_file: camel_case_types, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:uni_toni_test/utils/size_config.dart';

class Search_Result_List extends StatefulWidget {
  Search_Result_List(
      {super.key, required this.itemCount, this.color, this.stringData});

  List itemCount;

  int itemCount;

  Color? color;
  String? stringData;
  @override
  State<Search_Result_List> createState() => _Search_Result_ListState();
}

class _Search_Result_ListState extends State<Search_Result_List> {

  News_Controller news_controller = Get.put(News_Controller());


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getPercentScreenHeight(30),
      width: getPercentScreenWidth(90),
      child: ListView.builder(
        shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),

        itemCount: widget.itemCount.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                news_controller.getNews('tesla');
              },
              child: Container(
                width: getPercentScreenWidth(90),
                height: getPercentScreenHeight(8),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(widget.itemCount[index] + widget.stringData),
              ),

        itemCount: widget.itemCount,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: getPercentScreenWidth(90),
              height: getPercentScreenHeight(8),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(widget.stringData!),

            ),
          );
        },
      ),
    );
  }
}
