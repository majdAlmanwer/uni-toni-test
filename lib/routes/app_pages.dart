import 'package:get/get.dart';
import 'package:uni_toni_test/routes/routes.dart';
import '../screens/home/home_screen.dart';

final pages = <GetPage>[
  GetPage(
    name: AppRoutes.homepage,
    page: () => const HomeScreen(),
  ),
];
