// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uni_toni_test/screens/home/widgets/custom_text_field.dart';
import 'package:uni_toni_test/screens/home/widgets/search_result_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                color: Colors.red.shade200,
                hintText: 'Field_One',
              ),
              CustomTextField(
                controller: field_Two_Controller,
                color: Colors.green.shade200,
                hintText: 'Field_Two',
              ),
              Search_Result_List(
                itemCount: 3,
                color: Colors.red.shade200,
                stringData: 'ssss',
              ),
              Search_Result_List(
                itemCount: 3,
                color: Colors.green.shade200,
                stringData: 'ssss',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
