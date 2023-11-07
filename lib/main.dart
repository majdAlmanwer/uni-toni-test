import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uni_toni_test/routes/app_pages.dart';
import 'package:uni_toni_test/routes/routes.dart';
import 'package:uni_toni_test/utils/size_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homepage,
      getPages: pages,
      title: 'UniToni-Test',
      locale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      theme: ThemeData(),
    );
  }
}
