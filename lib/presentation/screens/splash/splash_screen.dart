import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import '../../bindings/category_binding.dart';
import '../category/category_list_screen.dart'; // Update this import path accordingly

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(); // Repeat the animation

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);

    // Navigate after 3 seconds
    Timer(const Duration(seconds: 3), () {
      // Get.off(() => const CategoryListScreen());
      Get.off(() => CategoryListScreen(), binding: CategoryBinding());
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: Image.network(
            'https://img.icons8.com/external-kmg-design-outline-color-kmg-design/80/external-category-project-management-kmg-design-outline-color-kmg-design.png', // Your icon
            height: 80,
            width: 80,
          ),
        ),
      ),
    );
  }
}
