import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_task_1/presentation/bindings/category_binding.dart';
import 'package:job_task_1/presentation/screens/category/category_list_screen.dart';
import 'package:job_task_1/presentation/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: CategoryBinding(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const SplashScreen(),
    );
  }
}